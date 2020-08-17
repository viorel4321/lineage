package Essence.gameserver.handler.admincommands.impl;

import Essence.commons.dbutils.DbUtils;
import Essence.commons.threading.RunnableImpl;
import Essence.commons.time.cron.SchedulingPattern;
import Essence.commons.util.Rnd;
import Essence.gameserver.Config;
import Essence.gameserver.ThreadPoolManager;
import Essence.gameserver.ai.CtrlIntention;
import Essence.gameserver.ai.L2PlayerAI;
import Essence.gameserver.data.xml.holder.SystemMessageHolder;
import Essence.gameserver.database.DatabaseFactory;
import Essence.gameserver.database.MySQL;
import Essence.gameserver.geodata.GeoEngine;
import Essence.gameserver.geometry.Location;
import Essence.gameserver.listener.actor.player.OnAnswerListener;
import Essence.gameserver.listener.actor.player.impl.ReviveAnswerListener;
import Essence.gameserver.manager.LimitManager;
import Essence.gameserver.model.*;
import Essence.gameserver.model.base.Experience;
import Essence.gameserver.model.instances.L2NpcInstance;
import Essence.gameserver.model.items.L2ItemInstance;
import Essence.gameserver.model.zone.Type;
import Essence.gameserver.network.L2GameClient;
import Essence.gameserver.serverpackets.*;
import Essence.gameserver.serverpackets.components.ChatType;
import Essence.gameserver.serverpackets.components.CustomMessage;
import Essence.gameserver.tables.*;
import Essence.gameserver.templates.L2PlayerTemplate;
import Essence.gameserver.templates.item.L2Item;
import Essence.gameserver.utils.Log;
import org.apache.commons.lang3.tuple.Pair;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.*;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import static Essence.gameserver.ai.CtrlIntention.*;
import static Essence.gameserver.model.inventory.Inventory._log;
import static java.lang.Enum.valueOf;

public class PlayerBot {
    public static List<SchedulingPattern> _cron = Config.cronEvent;
    private static String _zone = "[colosseum pvp]";
    public static final Location _BOT_LOC = new Location(47123, 186699, -3485);//на гиран харбор
    private static L2NpcInstance _bot_char;
    private static final Location loc1 = new Location(47044, 186653, -3485);//1 в гиран харбор
    private static final Location loc2 = new Location(-80838, 150052, -3043);//1 в Глудин - стартовая локация сервера
    private static final Location locGardenOfEva = new Location(81356, 251437, -10782);
    private static final Location Cementery2 = new Location(189324, 22540, -3726);
    private static final Location Cementery = new Location(182904, 22728, -3173);
    private static final Location FieldOfWhispers = new Location(92264, 216490, -3764);
    private static final Location MithrilMines = new Location(183574, -181932, -1657);
    private static final Location ElvenFortress = new Location(24199, 76691, -4095);
    private static Future<?> _taskTimerAction;
    private static Future<?> _taskTimerText;
    private static Future<?> _taskTimerDress;
    private static int randomX;
    private static int randomy;
    private static int randomz;
    private static Location loc3;
    public static String name = "  ";
    private static int accauntNumber;
    private static int sexId;
    private static int hairStyle;
    private static int hairColor;
    private static int faceId;
    public static int classId;
    private static int obj_id_bot;
    private static HashMap<Integer, Player> Personajele = new HashMap<Integer, Player>();
    private static HashMap<Integer, String> text = new HashMap<>();
    private static HashMap<Integer, String> namesMen = new HashMap<>();
    private static HashMap<Integer, String> namesWomen = new HashMap<>();
    private static Player botforsavelvl;
    /*private static HashMap<Integer, Player> PlayersFarming = new HashMap<Integer, Player>();*/
    private static int nr = 1;
    private static int numberMoveBot = 1;
    private static String textBot = "  ";
    private static final long botTextPeriod = Config.BOT_INTERVAL_TEXT * 1000; // Минимальный период (в мс), между сообщениями всех ботв
    private static final long botMovePeriod = Config.BOT_INTERVAL_MOVE * 1000; // Минимальный период (в мс), между сообщениями всех ботв
    private static long lastTextBot = 0;
    private static long lastMoveBot = 0;


    static void CreateBot() {

        spawnBot();
    }


    static void SpawnDbBots() {
        Integer[][] list = MySQL.simple_get_int_array(new String[]{"obj_id"}, "characters", "hwid LIKE \"0\"");
        System.out.println(" List  = " + Arrays.deepToString(list));
        for (Integer[] id : list) {
            Player p = Player.restore(id[0]);
            int bot_level_spawn = MySQL.simple_get_int("bot_level", "bot_db_level", "`obj_Id`=" + p.getPlayer().getObjectId());
            long exp_add = Experience.LEVEL[bot_level_spawn] - p.getExp();
            p.addExpAndSp(exp_add, 0, false, false);
            Log.add("Bot " + p.getName() + " Spawn with " + bot_level_spawn, "level");

            Personajele.put(nr, p);
            p.setTarget(Personajele.get(nr - 1));
            /*if (nr == 1) {*/
            /*}*/
            nr = nr + 1;
            p.broadcastPacket(new SocialAction(p.getObjectId(), 3));
            p.getPlayer().spawnMe();
            System.out.println("Spawn Bot  = " + p);
            p.getPlayer().setOnlineStatus(true);
        }



/*
        _taskTimerText = ThreadPoolManager.getInstance().scheduleAtFixedRate(new RunnableImpl() {
            @Override
            public void runImpl() throws Exception {
                new TaskSpeekBot();
            }
        }, 5  * 1000,  botTextPeriod );*/


        _taskTimerText = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskMoveBot(), 5 * 1000, botMovePeriod);
        _taskTimerAction = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskMoveBot(), 5 * 1000, botMovePeriod);
        _taskTimerDress = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskMoveBot(), 5 * 1000, botMovePeriod);




        /*if (_taskTimerText != null) {
            _taskTimerText = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskSpeekBot(), 5*1000, botTextPeriod);  *//*Porneste taskul de fiecare daca cind e creat un character*//*
        }*/
        /*}*/
           /* if (lastMoveBot + botMovePeriod < System.currentTimeMillis()) {
                lastMoveBot = System.currentTimeMillis();*/
 /*       if(_taskTimerAction != null) {
            _taskTimerAction = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskMoveBot(), 5 * 1000, botMovePeriod); *//*Porneste taskul de fiecare daca cind e creat un character*//*
        }
        if (_taskTimerDress != null) {
            _taskTimerDress = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskDressBot(), 5 * 1000, 100 * 1000);
        }*/
    }


    public static void KikBots() {
        Integer[][] list = MySQL.simple_get_int_array(new String[]{"obj_id"}, "characters", "hwid LIKE \"0\"");
        System.out.println(" List  = " + Arrays.deepToString(list));
        int nrKick = 1;
        for (Integer[] id : list) {
            Player p = Player.restore(id[0]);
            botforsavelvl = Personajele.get(nrKick);
            updatebotLevelDB();
            nrKick = nrKick + 1;
            if (p.isInWorld() || p.isOnline()) {
                Player plyr = World.getPlayer(p.getPlayer().getObjectId());
                if (plyr != null) {
                    plyr.kick(false, true);
                }
            }
            System.out.println("Kick Bot  = " + p);
        }
        if(_taskTimerAction != null) {
            _taskTimerAction.cancel(true);
            _taskTimerAction = null;
        }
        if(_taskTimerText != null) {
            _taskTimerText.cancel(true);
            _taskTimerText = null;
        }
        /*_taskTimerAction.isDone();*/

        Personajele.clear();
        nr = 1;
        text.clear();
        namesWomen.clear();
        namesMen.clear();
    }


    static void DeleteBot() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("DELETE FROM characters WHERE hwid=?");
            statement.setLong(1, 0);
            statement.execute();
        } catch (final Exception e) {
            _log.warn("Could not delete bot char:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
        DeleteAccauntBot();
        DeleteBotLevelTable();
        if(_taskTimerAction != null) {
            _taskTimerAction.cancel(true);
            _taskTimerAction = null;
        }
        if(_taskTimerText != null) {
            _taskTimerText.cancel(true);
            _taskTimerText = null;
        }
        Personajele.clear();
        nr = 1;
        text.clear();
        namesWomen.clear();
        namesMen.clear();
    }

    private static void DeleteBotLevelTable() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("DELETE FROM bot_db_level");
            statement.execute();
        } catch (final Exception e) {
            _log.warn("Could not delete bot char:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
    }


    private static void DeleteAccauntBot() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("DELETE FROM accounts WHERE access_level=?");
            statement.setLong(1, 150);
            statement.execute();
        } catch (final Exception e) {
            _log.warn("Could not delete accaunt login bot:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
    }

    private static void textMessageBot() {
        BufferedReader brTextBot;  //cream obiectul pentru ca sa citim datele din failul creat
        try {
            {
                brTextBot = new BufferedReader(new FileReader("data/pts/bottext.txt"));  //citeste datele din acest fail dupa ce a fost creat failul si a fost scris in el date
            }
            int mText = 1;
            String linebot; //creeam o linie in care o sa introducem datele citite
            try {
                while ((linebot = brTextBot.readLine()) != null) {
                    text.put(mText, linebot);
                    mText = mText + 1;
                }
                textBot = text.get(Rnd.get(1, mText));
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                try {
                    brTextBot.close();
                } catch (IOException e) {  //prinde eroarea daca va fi
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    private static void BotName() {

        randomCharStyle();

        if (sexId == 0 && namesMen.isEmpty()) {
            CharNameTable doesExistNameMen = new CharNameTable();
            BufferedReader brMen = null;  //cream obiectul pentru ca sa citim datele din failul creat

            try {
                brMen = new BufferedReader(new FileReader("data/pts/botnameMen.txt"));  //citeste datele din acest fail dupa ce a fost creat failul si a fost scris in el date
            } catch (IOException e) {
                e.printStackTrace();
            }
            int mMen = 1;
            String lineMen; //creeam o linie in care o sa introducem datele citite
            try {
                assert brMen != null;
                while ((lineMen = brMen.readLine()) != null) {
                    if (!doesExistNameMen.doesCharNameExist(lineMen)) {
                        namesMen.put(mMen, lineMen);
                        mMen = mMen + 1;
                    }
                    if (doesExistNameMen.doesCharNameExist(lineMen)) {
                        String numele = String.valueOf(Rnd.get(1, 100000));
                        if (namesMen.containsValue(numele)) {
                            numele = String.valueOf(Rnd.get(1, 100000));
                        }
                        namesMen.put(mMen, numele);
                        mMen = mMen + 1;
                    }
                }
                /*name = namesMen.get(Rnd.get(1, mMen));..*/
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                try {
                    assert brMen != null;
                    brMen.close();
                } catch (IOException e) {  //prinde eroarea daca va fi
                    System.out.println("Error 2: " + e);
                }
            }
        }

        if (sexId == 1 && namesWomen.isEmpty()) {
            CharNameTable doesExistNameWomen = new CharNameTable();
            BufferedReader brWomen = null;  //cream obiectul pentru ca sa citim datele din failul creat

            try {
                brWomen = new BufferedReader(new FileReader("data/pts/botnameGirl.txt"));  //citeste datele din acest fail dupa ce a fost creat failul si a fost scris in el date
            } catch (IOException e) {
                e.printStackTrace();
            }
            int mWomen = 1;
            String lineWomen; //creeam o linie in care o sa introducem datele citite
            try {
                assert brWomen != null;
                while ((lineWomen = brWomen.readLine()) != null) {
                    if (!doesExistNameWomen.doesCharNameExist(lineWomen)) {
                        namesWomen.put(mWomen, lineWomen);
                        mWomen = mWomen + 1;
                    }
                    if (doesExistNameWomen.doesCharNameExist(lineWomen)) {
                        String numele = String.valueOf(Rnd.get(1, 100000));
                        if (namesWomen.containsValue(numele)) {
                            numele = String.valueOf(Rnd.get(1, 100000));
                        }
                        namesWomen.put(mWomen, numele);
                        mWomen = mWomen + 1;
                    }
                }
                /*name = namesWomen.get(Rnd.get(1, mWomen));...*/
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                try {
                    assert brWomen != null;
                    brWomen.close();
                } catch (IOException e) {  //prinde eroarea daca va fi
                    System.out.println("Error 2: " + e);
                }
            }
        }

        if(sexId == 0){
            name = namesMen.get(Rnd.get(1, namesMen.size()));
        }else {
            name = namesWomen.get(Rnd.get(1, namesWomen.size()));
        }


    }


    private static void spawnBot() {
        BotName();
        StringBuilder accauntName = new StringBuilder();
        accauntNumber = Rnd.get(102, 10003);
        accauntName.append(accauntNumber);
        String accaunt = accauntName.toString();
        Player player = Player.create(classId, sexId, accaunt, name, hairStyle, hairColor, faceId);
        L2PlayerAI _ai = new L2PlayerAI(player);
        assert player != null;
        player.setAI(_ai);
        Player.restoreCharSubClasses(player);
        L2PlayerTemplate template = player.getTemplate();

        for (L2Item i : template.getItems()) {
            L2ItemInstance item = ItemTable.getInstance().createItem(i.getItemId(), player.getObjectId(), 0, "CharacterCreate");
            player.getInventory().addItem(item);
            if (item.getItemId() == 5588) // tutorial book
                player.registerShortCut(new ShortCut(11, 0, ShortCut.TYPE_ITEM, item.getObjectId(), -1, 1));
            if (item.isEquipable())
                if (player.getActiveWeaponItem() == null || item.getItem().getType2() == L2Item.TYPE2_WEAPON)
                    player.getInventory().equipItem(item, false);
        }

        SkillLearn[] skills = SkillTree.getInstance().getAvailableSkills(player, player.getClassId());
        for (SkillLearn s : skills)
            player.addSkill(SkillTable.getInstance().getInfo(s.getId(), s.getLevel()), true);
        if (player.getSkillLevel(1001) > 0) // Soul Cry
            player.registerShortCut(new ShortCut(1, 0, ShortCut.TYPE_SKILL, 1001, 1, 1));
        if (player.getSkillLevel(1177) > 0) // Wind Strike
            player.registerShortCut(new ShortCut(1, 0, ShortCut.TYPE_SKILL, 1177, 1, 1));
        if (player.getSkillLevel(1216) > 0) // Self Heal
            player.registerShortCut(new ShortCut(2, 0, ShortCut.TYPE_SKILL, 1216, 1, 1));
        player.registerShortCut(new ShortCut(0, 0, ShortCut.TYPE_ACTION, 2, -1, 1));
        player.registerShortCut(new ShortCut(3, 0, ShortCut.TYPE_ACTION, 5, -1, 1));
        player.registerShortCut(new ShortCut(10, 0, ShortCut.TYPE_ACTION, 0, -1, 1));
        player.setCurrentHpMp(player.getMaxHp(), player.getMaxMp());
        player.setCurrentCp(0);// по оффу новый персонаж начинает игру с 0 сп
        L2GameClient.saveCharToDisk(player);
        /*player.deleteMe();*/

        obj_id_bot = player.getPlayer().getObjectId();
        int locationRandom = Rnd.get(1, 2);
        if (locationRandom == 1) {
            loc3 = loc1;
        } else loc3 = loc2;
        player.getPlayer().teleToLocation(Location.findPointToStay(loc3, 20, 400));
        randomX = player.getLoc().getX();
        randomy = player.getLoc().getY();
        randomz = player.getLoc().getZ();
        player.getPlayer().spawnMe();
        player.getPlayer().getAllSkills();
        player.addAdena(Config.STARTING_ADENA);
        setAccessLevel();


        int level = (player.getLevel()) * Rnd.get(1, 80);
        long exp_add = Experience.LEVEL[level] + player.getExp();
        player.addExpAndSp(exp_add, 0, false, false);
        Log.add("Character " + player.getName() + " Leveled to " + level, "level");

        Personajele.put(nr, player);
        /*if (nr==0) {
            if (lastTextBot + botTextPeriod < System.currentTimeMillis()) {
                lastTextBot = System.currentTimeMillis();*/

            _taskTimerText = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskSpeekBot(), 5, botTextPeriod);  /*Porneste taskul de fiecare daca cind e creat un character*/

            /*}*/
           /* if (lastMoveBot + botMovePeriod < System.currentTimeMillis()) {
                lastMoveBot = System.currentTimeMillis();*/
               _taskTimerAction = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskMoveBot(), 5 * 1000, botMovePeriod); /*Porneste taskul de fiecare daca cind e creat un character*/
               _taskTimerDress = ThreadPoolManager.getInstance().scheduleAtFixedRate(new TaskDressBot(), 5 * 1000, 100 * 1000);

               /*Porneste taskul de fiecare daca cind e creat un character*/
        /* }*/
        /* }*/
        setbotLevelDB();
        player.setTarget(Personajele.get(nr - 1));
        nr = nr + 1;
        player.broadcastPacket(new SocialAction(player.getObjectId(), 3));
        player.getPlayer().setOnlineStatus(true);
        if(text.isEmpty()) {
            textMessageBot();
            System.out.println("a incarcat Textele");
        }
    }


    public static class TaskMoveBot implements Runnable {
        @Override
        public void run() {
            try {
                numberMoveBot = (Rnd.get(1, Personajele.size()));
                Player pMove = Personajele.get(numberMoveBot);
                if (pMove.isDead()) {
                    pMove.teleToLocation(Location.findPointToStay(loc3, 20, 450));
                    pMove.doRevive();
                    pMove.setCurrentHpMp(pMove.getMaxHp(), pMove.getMaxMp(), true);
                    pMove.setCurrentCp(pMove.getMaxCp());
                    pMove.restoreExp();
                    pMove.broadcastPacket(new Revive(pMove));
                    pMove.doRevive();
                    pMove.doRevive(100.);
                    pMove.getAI().setIntention(AI_INTENTION_ACTIVE);
                    pMove.setRunning();
                    pMove.broadcastCharInfo();
                }

                int locationRandom = Rnd.get(6, 10);

                if(!pMove.isAttackingNow() || !pMove.isRunning()) {

                    if (locationRandom == 0) {  /*Random moving*/
                        int RandomTP = Rnd.get(1, 2);
                        if (RandomTP == 1) {
                            loc3 = loc1;
                        } else loc3 = loc2;
                        pMove.getPlayer().teleToLocation(Location.findPointToStay(loc3, 20, 400));


                    } else if (locationRandom == 1 || locationRandom == 2) {  /*Go to NPC*/
                        /*int nrNpc = 1;*/
                        /*pMove.getAroundNpc(1000,200).toArray();*/
                        List<L2NpcInstance> around = pMove.getAroundNpc(1000, 200);
                        if (around != null && !around.isEmpty()) {
/*                        for (L2NpcInstance npc : around) {
                            randomNPC.put(nrNpc, npc);
                            nrNpc = nrNpc + 1;
                        }*/
                            int a = Rnd.get(1, around.size());
                            L2NpcInstance RandomNPC = around.get(a);
                            if (RandomNPC.getNpcId() == 40013 || RandomNPC.getNpcId() == 40025 ||
                                    RandomNPC.getNpcId() == 40060 || RandomNPC.getNpcId() == 40032
                                    || RandomNPC.getNpcId() == 31860 || RandomNPC.getNpcId() == 40034 ||
                                    RandomNPC.getNpcId() == 40026 || RandomNPC.getNpcId() == 40051
                                    || RandomNPC.getNpcId() == 40010 || RandomNPC.getNpcId() == 40053 ||
                                    RandomNPC.getNpcId() == 40061) {
                                Location pos = Location.coordsRandomize(RandomNPC.getLoc(), 10, 90);
                                Location loc = GeoEngine.moveCheck(pMove.getX(), pMove.getY(), pMove.getZ(), pos.getX(), pos.getY(), pMove.getInstanceId());
                                pMove.getAI().setIntention(AI_INTENTION_ACTIVE);
                                pMove.setRunning();
                                pMove.moveToLocation(loc, 0, false);
                                System.out.println(" " + pMove + " Go To NPC :  " + RandomNPC.getName());
                                around.clear();
                            } else RandomMoveBot();
                            System.out.println("Else Random Move " + pMove);
                        }

                    } else if (locationRandom == 3) {  /*Random moving*/
                        RandomMoveBot();
                        System.out.println("Random Move Bot : " + pMove);


                    } else if (locationRandom == 4 && !Personajele.get(numberMoveBot).isDead()) {  /*Random animation*/
                        Personajele.get(numberMoveBot).broadcastPacket(new SocialAction(Personajele.get(numberMoveBot).getObjectId(), Rnd.get(2, 13)));
                        System.out.println("Animatia : " + pMove);

                    } else if (locationRandom == 5) {/*  Go to TP and go to farm*/
                        System.out.println("teleport Bot To Farm : " + pMove);
                        teleportBotsToFarm(pMove);
                    } else if (locationRandom < 10 && locationRandom > 5) {/*  Go FIght !!!!*/
                        System.out.println("Bot FIGHT!!!! : " + pMove);
                        /*pMove.getAI().setIntention(AI_INTENTION_ATTACK, pMove.getPlayer(), null);*/

                        /*int nrNpc = 1;*/
                        List<L2NpcInstance> around = pMove.getAroundNpc(1000, 200);
                        if (around != null && !around.isEmpty()) {
/*                        for (L2NpcInstance npc : around) {
                            randomNPC.put(nrNpc, npc);
                            nrNpc = nrNpc + 1;
                        }*/
                            int a = Rnd.get(1, around.size());
                            Creature target = around.get(a);
                            Location pos = Location.coordsRandomize(target.getLoc(), 10, 90);
                            Location loc = GeoEngine.moveCheck(pMove.getX(), pMove.getY(), pMove.getZ(), pos.getX(), pos.getY(), pMove.getInstanceId());
                            pMove.getAI().setIntention(AI_INTENTION_ACTIVE);
                            pMove.setRunning();
                            pMove.moveToLocation(loc, 0, false);
                            //TODO
                            pMove.getAI().setIntention(AI_INTENTION_ATTACK, target);
                            /*pMove.doAttack(target);*/
                            System.out.println(" \n\n\n ");
                            System.out.println(" attaking Task  " + pMove.getName());
                            around.clear();
                        }
                    }
                }
            } catch (Exception ignored) {
            }
        }
    }

    private static void teleportBotsToFarm(Player playerTP) {
        if (!playerTP.isInCombat()) {
            System.out.println(" Cine devine persoana ce numereste in metod TP " + playerTP);
            if (playerTP.getLevel() >= 76) {
                System.out.println(" player TP locGardenOfEva " + playerTP);
                playerTP.getPlayer().teleToLocation(Location.findPointToStay(locGardenOfEva, 20, 150));
                playerTP.spawnMe();
            }
            if (playerTP.getLevel() >= 61 && playerTP.getLevel() <= 75) {
                playerTP.getPlayer().teleToLocation(Location.findPointToStay(Cementery2, 20, 150));
                playerTP.spawnMe();
                System.out.println(" player TP Cementery2 " + playerTP);
            }
            if (playerTP.getLevel() >= 52 && playerTP.getLevel() <= 60) {
                playerTP.getPlayer().teleToLocation(Location.findPointToStay(Cementery, 20, 150));
                playerTP.spawnMe();
                System.out.println(" player TP Cementery " + playerTP);
            }
            if (playerTP.getLevel() >= 40 && playerTP.getLevel() <= 51) {
                playerTP.getPlayer().teleToLocation(Location.findPointToStay(FieldOfWhispers, 20, 150));
                playerTP.spawnMe();
                System.out.println(" player TP FieldOfWhispers " + playerTP);
            }
            if (playerTP.getLevel() >= 20 && playerTP.getLevel() <= 39) {
                playerTP.getPlayer().teleToLocation(Location.findPointToStay(MithrilMines, 20, 150));
                playerTP.spawnMe();
                System.out.println(" player TP MithrilMines " + playerTP);
            }
            if (playerTP.getLevel() >= 1 && playerTP.getLevel() <= 19) {
                playerTP.getPlayer().teleToLocation(Location.findPointToStay(ElvenFortress, 20, 150));
                playerTP.getPlayer().spawnMe();
                System.out.println(" player TP ElvenFortress " + playerTP);
            }
        }
    }

    public static class TaskDressBot implements Runnable {
        @Override
        public void run() {
            try {
                Player player = Personajele.get(numberMoveBot);
                System.out.println(" dressOnBot  " + player);
                int enchRandomWeapon = Rnd.get(3, 10);
                int enchRandomArmor = Rnd.get(6, 10);
                if (player.getLevel() >= 76) {
                    if (player.getInventory().getCountOf(920) == 0) {
                        if (player.isMageClass()) {
                            player.getInventory().addItem(6384, 1, enchRandomArmor); /*Major Arcana Gloves*/
                            player.getInventory().addItem(6385, 1, enchRandomArmor); /* Major Arcana Boots*/
                            player.getInventory().addItem(6383, 1, enchRandomArmor); /*Major Arcana Robe*/
                            player.getInventory().addItem(6386, 1, enchRandomArmor); /*Major Arcana Circlet*/
                            player.getInventory().addItem(6608, 1, enchRandomWeapon); /*Arcana Mace [Acumen]*/
                            player.getInventory().addItem(858, 1, enchRandomArmor); /*Tateossian Earring*/
                            player.getInventory().addItem(858, 1, enchRandomArmor); /*Tateossian Earring*/
                            player.getInventory().addItem(889, 1, enchRandomArmor); /*Tateossian Ring*/
                            player.getInventory().addItem(889, 1, enchRandomArmor); /*Tateossian Ring*/
                            player.getInventory().addItem(920, 1, enchRandomArmor); /*Tateossian Necklace*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(6384);
                            intems.add(6385);
                            intems.add(6383);
                            intems.add(6386);
                            intems.add(6608);
                            intems.add(858);
                            intems.add(858);
                            intems.add(889);
                            intems.add(889);
                            intems.add(920);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {

                                    player.getInventory().equipItem(item, false);
                                }
                            }
                            L2ItemInstance item = player.getInventory().getItemByItemId(889);
                            //TODO
                            /*player.unEquipWeapon();*/
                            /*player.getInventory().unEquipItemInBodySlot(L2Item.SLOT_L_FINGER);*/
                            player.getInventory().getItemByItemId(889).setBodyPart(L2Item.SLOT_L_FINGER);
                            player.getInventory().equipItem(item, true);
                            player.getInventory().equipItem(item, false);
                            L2ItemInstance item2 = player.getInventory().getItemByItemId(858);
                            player.getInventory().getItemByItemId(858).setBodyPart(L2Item.SLOT_R_EAR);
                            player.getInventory().equipItem(item2, true);
                            player.getInventory().equipItem(item2, false);
                            player.broadcastCharInfo();
                            intems.clear();
                        } else {
                            player.getInventory().addItem(6379, 1, enchRandomArmor); /*Draconic Leather Armor*/
                            player.getInventory().addItem(6382, 1, enchRandomArmor); /* Draconic Leather Helmet*/
                            player.getInventory().addItem(6381, 1, enchRandomArmor); /*Draconic Leather Boots*/
                            player.getInventory().addItem(6380, 1, enchRandomArmor); /*Draconic Leather Gloves*/
                            player.getInventory().addItem(6592, 1, enchRandomWeapon); /*Angel Slayer [Haste]*/
                            player.getInventory().addItem(858, 1, enchRandomArmor); /*Tateossian Earring*/
                            player.getInventory().addItem(858, 1, enchRandomArmor); /*Tateossian Earring*/
                            player.getInventory().addItem(889, 1, enchRandomArmor); /*Tateossian Ring*/
                            player.getInventory().addItem(889, 1, enchRandomArmor); /*Tateossian Ring*/
                            player.getInventory().addItem(920, 1, enchRandomArmor); /*Tateossian Necklace*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(6379);
                            intems.add(6382);
                            intems.add(6381);
                            intems.add(6380);
                            intems.add(6592);
                            intems.add(858);
                            intems.add(858);
                            intems.add(889);
                            intems.add(889);
                            intems.add(920);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }
                            L2ItemInstance item = player.getInventory().getItemByItemId(889);
                            player.getInventory().getItemByItemId(889).setBodyPart(L2Item.SLOT_L_FINGER);
                            player.getInventory().equipItem(item, true);
                            L2ItemInstance item2 = player.getInventory().getItemByItemId(858);
                            player.getInventory().getItemByItemId(858).setBodyPart(L2Item.SLOT_R_EAR);
                            player.getInventory().equipItem(item2, true);
                            player.broadcastCharInfo();
                            intems.clear();
                        }
                    }
                }
                if (player.getLevel() >= 61 && player.getLevel() <= 75) {
                    if (player.getInventory().getCountOf(924) == 0) {
                        if (player.isMageClass()) {
                            player.getInventory().addItem(2407, 1, enchRandomArmor); /*Dark Crystal Robe*/
                            player.getInventory().addItem(512, 1, enchRandomArmor); /* Dark Crystal Helmet*/
                            player.getInventory().addItem(5779, 1, enchRandomArmor); /*Dark Crystal Boots [Robe]*/
                            player.getInventory().addItem(5767, 1, enchRandomArmor); /*Dark Crystal Gloves [Robe]*/
                            player.getInventory().addItem(5643, 1, enchRandomWeapon); /*Sword of Miracles [Acumen]*/
                            player.getInventory().addItem(862, 1, enchRandomArmor); /*Majestic Earring*/
                            player.getInventory().addItem(862, 1, enchRandomArmor); /*Majestic Earring*/
                            player.getInventory().addItem(893, 1, enchRandomArmor); /*Majestic Ring*/
                            player.getInventory().addItem(893, 1, enchRandomArmor); /*Majestic Ring*/
                            player.getInventory().addItem(924, 1, enchRandomArmor); /*Majestic Necklace*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(2407);
                            intems.add(512);
                            intems.add(5779);
                            intems.add(5767);
                            intems.add(5643);
                            intems.add(862);
                            intems.add(862);
                            intems.add(893);
                            intems.add(893);
                            intems.add(924);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }

                            player.broadcastCharInfo();
                            intems.clear();
                        } else {
                            player.getInventory().addItem(2382, 1, enchRandomArmor); /*Tallum Plate Armor*/
                            player.getInventory().addItem(547, 1, enchRandomArmor); /* Tallum Helm*/
                            player.getInventory().addItem(5780, 1, enchRandomArmor); /*Tallum Boots [Heavy Armor]*/
                            player.getInventory().addItem(5768, 1, enchRandomArmor); /*Tallum Gloves [Heavy Armor]*/
                            player.getInventory().addItem(8110, 1, enchRandomWeapon); /* Infernal Master [Focus]*/
                            player.getInventory().addItem(862, 1, enchRandomArmor); /*Majestic Earring*/
                            player.getInventory().addItem(862, 1, enchRandomArmor); /*Majestic Earring*/
                            player.getInventory().addItem(893, 1, enchRandomArmor); /*Majestic Ring*/
                            player.getInventory().addItem(893, 1, enchRandomArmor); /*Majestic Ring*/
                            player.getInventory().addItem(924, 1, enchRandomArmor); /*Majestic Necklace*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(2382);
                            intems.add(547);
                            intems.add(5780);
                            intems.add(5768);
                            intems.add(8110);
                            intems.add(862);
                            intems.add(862);
                            intems.add(893);
                            intems.add(893);
                            intems.add(924);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }

                            player.broadcastCharInfo();
                            intems.clear();
                        }
                    }
                }
                if (player.getLevel() >= 52 && player.getLevel() <= 60) {
                    if (player.getInventory().getCountOf(932) == 0) {
                        if (player.isMageClass()) {
                            player.getInventory().addItem(2406, 1, enchRandomArmor); /*Avadon Robe*/
                            player.getInventory().addItem(2415, 1, enchRandomArmor); /* Avadon Circlet */
                            player.getInventory().addItem(5732, 1, enchRandomArmor); /*Avadon Boots [Robe]*/
                            player.getInventory().addItem(5716, 1, enchRandomArmor); /*Avadon Gloves [Robe]*/
                            player.getInventory().addItem(7722, 1, enchRandomWeapon); /*Sword of Valhalla [Acumen]*/
                            player.getInventory().addItem(870, 1, enchRandomArmor); /*Earring of Holy Spirit*/
                            player.getInventory().addItem(870, 1, enchRandomArmor); /*Earring of Holy Spirit*/
                            player.getInventory().addItem(901, 1, enchRandomArmor); /*Ring of Holy Spirit*/
                            player.getInventory().addItem(901, 1, enchRandomArmor); /*Ring of Holy Spirit*/
                            player.getInventory().addItem(932, 1, enchRandomArmor); /*Necklace of Holy Spirit*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(2406);
                            intems.add(2415);
                            intems.add(5732);
                            intems.add(5716);
                            intems.add(7722);
                            intems.add(870);
                            intems.add(870);
                            intems.add(901);
                            intems.add(901);
                            intems.add(932);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }

                            player.broadcastCharInfo();
                            intems.clear();
                        } else {
                            player.getInventory().addItem(358, 1, enchRandomArmor); /*Blue Wolf Breastplate*/
                            player.getInventory().addItem(2380, 1, enchRandomArmor); /* Blue Wolf Gaiters*/
                            player.getInventory().addItem(2416, 1, enchRandomArmor); /* Blue Wolf Helmet*/
                            player.getInventory().addItem(5734, 1, enchRandomArmor); /*Blue Wolf Boots [Heavy Armor]*/
                            player.getInventory().addItem(5718, 1, enchRandomArmor); /*Blue Wolf Gloves [Heavy Armor]*/
                            player.getInventory().addItem(4717, 1, enchRandomWeapon); /* Sword of Damascus [Focus]*/
                            player.getInventory().addItem(870, 1, enchRandomArmor); /*Earring of Holy Spirit*/
                            player.getInventory().addItem(870, 1, enchRandomArmor); /*Earring of Holy Spirit*/
                            player.getInventory().addItem(901, 1, enchRandomArmor); /*Ring of Holy Spirit*/
                            player.getInventory().addItem(901, 1, enchRandomArmor); /*Ring of Holy Spirit*/
                            player.getInventory().addItem(932, 1, enchRandomArmor); /*Necklace of Holy Spirit*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(358);
                            intems.add(2380);
                            intems.add(2416);
                            intems.add(5734);
                            intems.add(5718);
                            intems.add(4717);
                            intems.add(870);
                            intems.add(870);
                            intems.add(901);
                            intems.add(901);
                            intems.add(932);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }

                            player.broadcastCharInfo();
                            intems.clear();
                        }
                    }
                }
                if (player.getLevel() >= 40 && player.getLevel() <= 51) {
                    if (player.getInventory().getCountOf(919) == 0) {
                        if (player.isMageClass()) {
                            player.getInventory().addItem(439, 1, enchRandomArmor); /*Karmian Tunic*/
                            player.getInventory().addItem(471, 1, enchRandomArmor); /* Karmian Stockings */
                            player.getInventory().addItem(2454, 1, enchRandomArmor); /*Karmian Gloves*/
                            player.getInventory().addItem(517, 1, enchRandomArmor); /*Composite Helmet*/
                            player.getInventory().addItem(2430, 1, enchRandomArmor); /*Karmian Boots*/
                            player.getInventory().addItem(6313, 1, enchRandomWeapon); /*Homunkulus's Sword [Acumen]*/
                            player.getInventory().addItem(857, 1, enchRandomArmor); /*Earring of Holy Spirit*/
                            player.getInventory().addItem(857, 1, enchRandomArmor); /*Earring of Holy Spirit*/
                            player.getInventory().addItem(888, 1, enchRandomArmor); /*Ring of Holy Spirit*/
                            player.getInventory().addItem(888, 1, enchRandomArmor); /*Ring of Holy Spirit*/
                            player.getInventory().addItem(919, 1, enchRandomArmor); /*Necklace of Holy Spirit*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(439);
                            intems.add(471);
                            intems.add(2454);
                            intems.add(517);
                            intems.add(2430);
                            intems.add(6313);
                            intems.add(857);
                            intems.add(857);
                            intems.add(888);
                            intems.add(888);
                            intems.add(919);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }

                            player.broadcastCharInfo();
                            intems.clear();
                        } else {
                            player.getInventory().addItem(400, 1, enchRandomArmor); /*Theca Leather Armor*/
                            player.getInventory().addItem(420, 1, enchRandomArmor); /* Theca Leather Gaiters*/
                            player.getInventory().addItem(2436, 1, enchRandomArmor); /* Theca Leather Boots*/
                            player.getInventory().addItem(517, 1, enchRandomArmor); /*Composite Helmet*/
                            player.getInventory().addItem(2463, 1, enchRandomArmor); /*Divine Gloves*/
                            player.getInventory().addItem(8102, 1, enchRandomWeapon); /* Pa'agrian Sword [Focus] */
                            player.getInventory().addItem(857, 1, enchRandomArmor); /*Blessed Earring*/
                            player.getInventory().addItem(857, 1, enchRandomArmor); /*Blessed Earring*/
                            player.getInventory().addItem(888, 1, enchRandomArmor); /*Blessed Ring*/
                            player.getInventory().addItem(888, 1, enchRandomArmor); /*Blessed Ring*/
                            player.getInventory().addItem(919, 1, enchRandomArmor); /*Blessed Necklace*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(400);
                            intems.add(420);
                            intems.add(2436);
                            intems.add(517);
                            intems.add(2463);
                            intems.add(8102);
                            intems.add(857);
                            intems.add(857);
                            intems.add(888);
                            intems.add(888);
                            intems.add(919);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }
                            player.broadcastCharInfo();
                            intems.clear();
                        }
                    }
                }
                if (player.getLevel() >= 20 && player.getLevel() <= 39) {
                    if (player.getInventory().getCountOf(914) == 0) {
                        if (player.isMageClass()) {
                            player.getInventory().addItem(436, 1, enchRandomArmor); /*Tunic of Knowledge*/
                            player.getInventory().addItem(469, 1, enchRandomArmor); /* Stockings of Knowledge */
                            player.getInventory().addItem(2447, 1, enchRandomArmor); /*Gloves of Knowledge*/
                            player.getInventory().addItem(47, 1, enchRandomArmor); /*Helmet*/
                            player.getInventory().addItem(2424, 1, enchRandomArmor); /*Manticore Skin Boots*/
                            player.getInventory().addItem(129, 1, enchRandomWeapon); /*Sword of Revolution*/
                            player.getInventory().addItem(851, 1, enchRandomArmor); /*Omen Beast's Eye Earring*/
                            player.getInventory().addItem(851, 1, enchRandomArmor); /*Omen Beast's Eye Earring*/
                            player.getInventory().addItem(882, 1, enchRandomArmor); /*Mithril Ring*/
                            player.getInventory().addItem(882, 1, enchRandomArmor); /*Mithril Ring*/
                            player.getInventory().addItem(914, 1, enchRandomArmor); /*Necklace of Darkness*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(436);
                            intems.add(469);
                            intems.add(2447);
                            intems.add(47);
                            intems.add(2424);
                            intems.add(129);
                            intems.add(851);
                            intems.add(851);
                            intems.add(882);
                            intems.add(882);
                            intems.add(914);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }
                            player.broadcastCharInfo();
                            intems.clear();
                        } else {
                            player.getInventory().addItem(352, 1, enchRandomArmor); /*Brigandine Tunic*/
                            player.getInventory().addItem(2378, 1, enchRandomArmor); /* Brigandine Gaiters*/
                            player.getInventory().addItem(2411, 1, enchRandomArmor); /* Brigandine Helmet*/
                            player.getInventory().addItem(2424, 1, enchRandomArmor); /*Manticore Skin Boots*/
                            player.getInventory().addItem(2447, 1, enchRandomArmor); /*Gloves of Knowledge*/
                            player.getInventory().addItem(70, 1, enchRandomWeapon); /* Claymore */
                            player.getInventory().addItem(851, 1, enchRandomArmor); /*Omen Beast's Eye Earring*/
                            player.getInventory().addItem(851, 1, enchRandomArmor); /*Omen Beast's Eye Earring*/
                            player.getInventory().addItem(882, 1, enchRandomArmor); /*Mithril Ring*/
                            player.getInventory().addItem(882, 1, enchRandomArmor); /*Mithril Ring*/
                            player.getInventory().addItem(914, 1, enchRandomArmor); /*Necklace of Darkness*/

                            ArrayList<Integer> intems = new ArrayList<>();
                            intems.add(352);
                            intems.add(2378);
                            intems.add(2411);
                            intems.add(2424);
                            intems.add(2447);
                            intems.add(70);
                            intems.add(851);
                            intems.add(851);
                            intems.add(882);
                            intems.add(882);
                            intems.add(914);

                            for (Integer x : intems) {
                                L2ItemInstance item = player.getInventory().getItemByItemId(x);
                                if (!player.getInventory().getItemByItemId(x).isEquipped()) {
                                    player.getInventory().equipItem(item, false);
                                }
                            }
                            player.broadcastCharInfo();
                            intems.clear();
                        }
                    }
                }
                if (player.getLevel() >= 1 && player.getLevel() <= 19) {
                    if (!player.getInventory().getItemByItemId(1147).isEquipped()) {
                        L2ItemInstance item1 = player.getInventory().getItemByItemId(1147);
                        player.getInventory().equipItem(item1, true);
                        L2ItemInstance item2 = player.getInventory().getItemByItemId(1146);
                        player.getInventory().equipItem(item2, true);
                        player.broadcastCharInfo();
                    }
                }
                System.out.println("Finished dress Boyt" + player);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }


    private static void RandomMoveBot() {
        /*Go Random loc */
        Player pMove = Personajele.get(numberMoveBot);
        Location pos = Location.coordsRandomize(pMove.getLoc(), 50, 300);
        Location loc = GeoEngine.moveCheck(pMove.getX(), pMove.getY(), pMove.getZ(), pos.getX(), pos.getY(), pMove.getInstanceId());
        pMove.getAI().setIntention(AI_INTENTION_ACTIVE);
        pMove.setRunning();
        pMove.moveToLocation(loc, 0, false);
        /*pMove.moveToLocation(Location.coordsRandomize(loc1, 30, 300), 0, true);*/
    }

    public static class TaskSpeekBot implements Runnable {

        @Override
        public void run() {
            try {
                if(text.isEmpty()) {
                    textMessageBot();
                }
                int numberBot = (Rnd.get(0, Personajele.size()));
                textBot = text.get(Rnd.get(1, text.size()));
                for (Player player : World.getAroundPlayers(Personajele.get(numberBot))) {
                    if (!Personajele.get(numberBot).isDead()) {
                        assert player != null;
                        player.sendPacket(new Say2(Personajele.get(numberBot).getObjectId(), ChatType.ALL, String.valueOf(Personajele.get(numberBot).getName()), textBot));
                    }
                }
            } catch (Exception ignored) {
            }
        }
    }


    private static void randomCharStyle() {
        ArrayList<Integer> clases1Lvl = new ArrayList<>();
        clases1Lvl.add(0);
        clases1Lvl.add(10);
        clases1Lvl.add(18);
        clases1Lvl.add(25);
        clases1Lvl.add(31);
        clases1Lvl.add(38);
        clases1Lvl.add(44);
        clases1Lvl.add(49);
        clases1Lvl.add(53);
        classId = clases1Lvl.get(Rnd.get(0, 8));
        clases1Lvl.clear();
        sexId = Rnd.get(0, 1);
        hairStyle = Rnd.get(0, 4);
        hairColor = Rnd.get(0, 2);
        faceId = Rnd.get(0, 2);
    }

    private static void setAccessLevel() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("UPDATE characters SET accesslevel=?, x=?, y=?, z=?, hwid=? WHERE obj_Id=?");
            statement.setInt(1, 150);
            statement.setInt(2, randomX);
            statement.setInt(3, randomy);
            statement.setInt(4, randomz);
            statement.setInt(5, 0);
            statement.setInt(6, obj_id_bot);
            statement.executeUpdate();
            DbUtils.closeQuietly(statement);
        } catch (final Exception e) {
            _log.warn(" Error Update access_level char Bot:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
        createAccauntBot();
    }


    private static void setAccessLevelaccaunt() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("UPDATE accounts SET access_level=? WHERE hwid=?");
            statement.setInt(1, 150);
            statement.setInt(2, 0);
            statement.executeUpdate();
            DbUtils.closeQuietly(statement);
        } catch (final Exception e) {
            _log.warn(" Error Update access_Level Acaunt:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
    }


    private static void createAccauntBot() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("INSERT INTO `accounts` (login, password, last_access, access_level, last_ip, last_server, bonus, bonus_expire, ban_expire, allow_ip, points, hwid) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
            statement.setString(1, String.valueOf(accauntNumber));
            statement.setInt(2, 222118587);
            statement.setString(3, String.valueOf(0));
            statement.setInt(4, 0);
            statement.setInt(5, 0);
            statement.setInt(6, 0);
            statement.setInt(7, 0);
            statement.setInt(8, 0);
            statement.setInt(9, 0);
            String s = "";
            statement.setString(10, s);
            statement.setInt(11, 0);
            statement.setInt(12, 0);
            statement.executeUpdate();
            DbUtils.closeQuietly(statement);
        } catch (final Exception e) {
            _log.warn(" Error Insert Into acaunts:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
        setAccessLevelaccaunt();
    }


    private static void setbotLevelDB() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("INSERT INTO `bot_db_level` (bot_level, obj_id) VALUES (?,?)");
            statement.setInt(1, Personajele.get(nr).getLevel());
            System.out.println("INSERT  Personajele.get(nr).getLevel() " + Personajele.get(nr).getLevel() + " Name : " + Personajele.get(nr));
            statement.setInt(2, Personajele.get(nr).getObjectId());
            System.out.println("INSERT  Personajele.get(nr).getObjectId() " + Personajele.get(nr).getObjectId() + " Name : " + Personajele.get(nr));
            statement.executeUpdate();
            DbUtils.closeQuietly(statement);
        } catch (final Exception e) {
            _log.warn(" Error Insert Into acaunts:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
        setAccessLevelaccaunt();
    }


    private static void updatebotLevelDB() {
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DatabaseFactory.getInstance().getConnection();
            statement = con.prepareStatement("UPDATE bot_db_level SET bot_level=? WHERE obj_id=?");
            statement.setInt(1, botforsavelvl.getLevel());
            System.out.println("UPDATE  botforsavelvl.getLevel() " + botforsavelvl.getLevel());
            statement.setInt(2, botforsavelvl.getObjectId());
            System.out.println("UPDATE  botforsavelvl.getObjectId() " + botforsavelvl.getObjectId());
            statement.executeUpdate();
            DbUtils.closeQuietly(statement);
        } catch (final Exception e) {
            _log.warn(" Error Insert Into acaunts:" + e);
        } finally {
            DbUtils.closeQuietly(con, statement);
        }
    }
}
