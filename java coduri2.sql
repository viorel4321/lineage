

-> leamda

Mesaj la player
player.sendMessage("Вы не можете брать саб-класс, по сколько зарегистрированы на олимпийские игры.");


instanceof = verifica tipul de date, exemplu: Integer (25)  ->  instanceof Integer -> true


переменная x = (выражение) ? значение if true : значение if false

--------------------
Setter si getter
----------------------------------------------------
private boolean _isOnEvent;

    public  void setIsOnEvent (boolean isOnEvent) {
        _isOnEvent = isOnEvent;
    }

    public boolean getIsOnEvent ( ){
        return _isOnEvent;
    }
	----------------------------------------------------
	
Spectator olympiad
portPlayer


	----------------------------------------------------
            for(Player player : GameObjectsStorage.getAllPlayers())
            {
                player.setIsInOlympList(false);
              
            }

------------------------------------------
zaderjka in secunde

------------------------------------------
try {
                TimeUnit.SECONDS.sleep(1);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }


 for (Player onlinePlayer : World.getAllPlayers())
        {
            if (onlinePlayer == null)
            {
                continue;
            }

------------------------------------------
------------------------------------------

api meu yandex translate
trnsl.1.1.20191011T181229Z.c29185c299a97b08.e9658490ceb9d6a52f37bee99d11845c18de98b8

http://pojo.sodhanalibrary.com/ 
face din json sau xml cod in class obiect

https://geekbrains.ru/tests/39
testuri java

json cod
https://yandex.ru/dev/translate/doc/dg/reference/translate-docpage/


json
https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20181029T132734Z.9c03210bdb5bd98a.00ba1c7fc45c8723791a11ba2f3a05441223f4f1&text=добрый вечер&lang=ru-en

conectarea biblioteca clasurilor pentru zapros saitului
org.apache.httpcomponents
gasim:
org.apache.httpcomponents:httpclient:4.3-alpha1

printf
System.out.printf("%d/%d/%d год\n", day, month, year);

изучить и реализовать шифр цезаря
'' - citeshte ca simbol int
polimorfizm
f8
System.currentTimeMillis()
446-404-402
_announces.add(ThreadPoolManager.getInstance().scheduleGeneral(new AnnounceTask(20), time - 1200_000));


.toUpperCase - face ca cuvintul sa fie cu litera mare

teams = new HashMap<Integer, Team>();
Olympiad._noblesRank = new HashMap<>();
HashMap<Integer, Team> teams = new HashMap<Integer, Team>();
private final Map<String, MemoryByteCode> classes = new HashMap<String, MemoryByteCode>();

Collection<Integer> a = teams.values();
a = cu toate valorile din HashMap unde Rezultatul =  [5, 6, 9, 8] arata doar Values fara Key  unde verificam : if(a.contains(5)) {

Class Player extends Actor
super.  -- cind folosim extends ( nasledovanie) ca sa avem acces la datele din Actor, noi scrim super.peremenaiaDinActor

this - concretizeaza ca e perimenaia din class si nu din metod. Ex:
public class Player {
int actor = 5;
public Player {actor}

this.actor = actor;  unde this.actor e perimenaia din class care = 5 iar actor dupa egal este perimenaia din constructor un ii dam valoarea 5.

}

hashMap.put("Кот", new Cat("Мурзик"));
System.out.println(hashMap.containsKey("Кот"));
System.out.println(hashMap.containsValue(cat));

-------------------------------------------
daca este in lista va sterge si va scri din nou:
private static final Set<Player> _team1 = new HashSet<>();
-------------------------------------------


la hashmap numararea se incepe de la 1

ConcurrentHashMap  ??
private static ConcurrentHashMap<Integer, Integer> _kills = new ConcurrentHashMap<>();
SchedulingPattern  ?
ArrayList<>()   ?

.trim();  --- sterge prabelurile din text in plus
String trim()

Player.trei();  - porneste din clasul Player metodul trei - tot ce-i acolo.

StringBuilder builder = new StringBuilder () ;
append ( )  - adauga rind
builder .append(ch) ; // adauga un simbol
builder.append(str) ; // adauga un text
la urma de adaugat 
String completedString = builder.toString() ;

ca sa citesc de pe fail : 
Scanner in = new Scanner (Paths.get ( "myfile.txt")) ;

masiv: int[] name = new int[5]; ca sa abivlesc : int[] peremenaia;

ca sa scriu pe fail:
PrintWriter out = new PrintWriter ("myfile.txt");

"mydirectory/myfile.txt" sau "../myfile.txt"
"c: \\mydirectoryWmyfile.txt"

println - urmatorul text din cod va aparea din rind nou
print - textul urmator va aparea in acelashi rind
byte  -128 -->  127   ,(numere intregi)
short  -32,768  -->  32,767    inclusiv,   (numere intregi)
int    -2 la puterea 31   -->  2 la puterea 31    (32 bit) , (numere intregi)
long -2 la puterea 63  --> 2 la puterea 63 minus 1  (-1)   (64 bit - cifre foarte mari) , (numere intregi)
array - masiv - multe date  -  array[]
float  cifre cu virgula 23.51f  exemplu: float cifra = 23.47f;   f - se scrie numaidecit (32 bit)
double 62.5485362d;  scrie cifre dupa virgula de 2 ori mai mult ca float  --> d -  la urma numaidecit  (64 bit - cifre foarte mari cu virgula dupa)


Clascreat peremenaia = new Clascreat();
peremenaia.start();  -- porneste patok paralel


Clascreat peremenaia2 = new Clascreat();
peremenaia2.metoddinclas();  -- porneste patok pe rind unu dupa altul


boolean - primeste doar doua cifre 1 si 0 --> true=1  false=0
char - litere - se scrie doar un simbol in doua virgule 'R';
String  - se scrie fraza intreaga in virgule duble "fraza intreaga";
import java.lang.String; - codul ista importa pakete pentru String

"\n"    ---> rind nou
&&     ---->  inseamna SI. In PHP --> AND
||     --->  inseamna OR in php ( adica sau)
!=   --->  negatie
:    ----> in caz contrar ex: true : false  --> daca nu e true atunci e false.
%    -----> arata restul dupa impartire

else if (first == 45)     ----> se poate de adaugat cite vrei
System.out.print("Num is 45 Uraaa");
da dupa ultimul else if trbuie sa fie else

default  ---> daca nici o functie nu se executa atunci se va executa default.
for ---> ciclu
i-= 2   ---> se michoreaza cu 2
i+= 2   ---> se mareshte cu 2
i++     ---> se mareshte cu 1
dupa cicluri nu se pune ; ex  if (j > 10)    for (int i = 200; i > 10; i-= 10)

boolean po umalcianiu False
unit test-------------------------------------------------------------

dupa While se pune ;   while (x < 0);
While se executa pina cind rezultatul va fi true sau false in dependenta ce conditie scrii in paranteze.
Pina atunci va efectua nenumarate ori ciclul. De exemplu:
int value = 10;
while (value > 5) {System.out.println("Hello")}
acest ciclu nu se va opri nici o data.
Dar daca de scris conditia unde value nu va fi true, se va opri ciclul.

Genereaza random cifre : int random = (int) (Math.random() * 5);    

break;   ---> dupa ce se termina toate ciclurile se opreshte ciclul tot aceeashi se poate de scis isTrue = false; daca e boolean  adica breack e cel mai bine de scris
return; ---> executa codul ex: a + b --> o sa adune
continue;  ---> trece peste conditia care e adevarata si nu da rezultatul si repeta din nou ciclul pin cind apare conditia ca ciclul sa se opreasca
in.nextInt ();  --->  introduce datele prin tastatura
void ---> tipul de intoarce - functia se executa dar nu ne intoarce nici un parametru
main ---> incepe a citi programul
private ---> codul lucreaza doar in functia asta
-----------------------------------------------------
reader  ---> face conexiunea dintre citeva faile cu cod :

Reader r = new Reader();  
r.Scan();  

unde Reader() este denumirea failului din care vom citi codul. SSilka.
//Scan -> clasul din failul Reader unde se afisheaza textul
//codu ista se introduce in failul Main.java
-------------------------------------------------------

Ca sa citeasca programul datele introduse de pe tastatura scrim codul:  
Scanner scn = new Scanner(System.in); iar mai sus scrim codul de import pentru scaner: import java.util.Scanner;

Scanner str = new Scanner(System.in);  //in loc de str putem scri orice peremenaia
i = str.nextInt();   //in loc de str putem scri orice peremenaia
System.out.println(str.nextLine ());   nextLine  --> text
System.out.println(str.nextInt ());    nextInt  --> cifre

import java.util.*;   ----> importa toate bibliotecile

poate fi: i = str.nextInt(); i = str.nextLine(); i = str.nextFloat();   i = str.nextDouble(); --> acest cod face ca tu sa scrii de pe tastatura ceva
------------------------------------------------------------------
void - tipul de intoarcere a informatiei, doar arata pe ecran ceva
public - modificator dostupa
*=  inmulteshte cu sine insushi
viorel.height   ----> viorel -> metoda. (.) (punctul) se pune pentru a avea legatura cu toate metodele si contactele (height) adica ce se afla dupa punct. Unde 
public int height = 180;

public ---> modificator dostupa
extends  ---> naslednic la alt class
------------------
super.   -----> face ca noi sa ne putem adresa la clasul de baza in metoda nasledovanie cava incepem codul cu 
void tell () {
System.out.println(super.name);
}

------------------------------------
doua puncte --> fiecarui din lista ii da status false
for(Player player : GameObjectsStorage.getAllPlayers())
{
player.setIsOnEvent(false);
}
------------------------------------


file(); --> выделяем память под него
------------------
tell ---> se adreseaza la clasul in care se afla.
this. ----> cauta peremenaia in tot clasul - nu doar in metodul in care se afla. Daca peremenaia se afla in class atunci din metod putem gasi peremenaia din clas daca folostm this.peremenaia . Dar daca peremenaia se afla in metod, atunci din class nu putem gasi peremenaia care se afla in acest class - o s-o putem gasi doar in aces metod.

1500L ----> 1.5 secunde - 1500 milisecunde
final --> creeaza constanta care nu poate fi modificata si face ca clasul sa nu poata avea naslednic.
static --> se poate de adresat la clas fara ca sa creeam obiectul acestui clas  ex: class.metoda, daca noi modificam obiectul in alt class ex: peremenaia.metod = 24; scris in metoda din alt class, atunci in clasul de baza metod = 24; pentru toate locurile unde se va folosi.
Cod ex: Модификаторы static и final

null --> nu face numic
null - in centru ecranului o sa arate mesajul

try - face ca sa nu zasareasca memoria calculatorului - in caz ca da eroare codu atunci el prapusteshte aceasta bucata de cod. In caz ca nu se executa atuci face codul din catch codul din acolade.

JOptionPane.showMessageDialog - descide fereastra cu mesaj - trebuie de introdus biblioteca  import javax.swing.JOptionPane;

   n1 = JOptionPane.showInputDialog("Introduceti primul numar"); //deschide fereastra cu acest text in care introducem text sau numar - de realicat prin metodul Scan care citeshte datele de pe tastatura
   
   extends JFrame --> creeaza fereastra
   
   Daca metodul creat cooincide cu denumirea clasului - el devine contructor.
   
   == --> este egal
   = --> are valoarea
   if(in paranteze scrim conditia)
   
   
JTextField loginField;
JPasswordField passwordField;

getProperty  - citeshte datele String din faile

Static --> numele clasului.denumirea static ex: class.staticName adica deodata ne adresam la clasul si peremenaia care ne trebuie din alte faile: Class.peremenaia  si daca o schimbam cu un rind mai sus ap ea o sa schimbe. Ex: Class.peremenaia = 26; apoi mai jos scrim System.out.println(Class.peremenaia); va fi 26
Daca nu e Static atunci trebuie sa creem obiectul apoi crem acces la aceasta peremenaia  ceva ex ca ssilca 

dialog = dialog.replaceFirst("%AI%", ""); --> inlocueshte %AI% pe nimic


boolean _isOnEvent;
    public  void setIsOnEvent (boolean isOnEvent) {
        _isOnEvent = isOnEvent;
    }
    
    public boolean getIsOnEvent ( ){
        return _isOnEvent;
    }
	
	
	
--------------------------------------------------------------------------------
de scos prin ciclu alfabetul:

        for(char i = 'a';i<='z';i++)
        {
            System.out.println(i);
        }
		
		
--------------------------------------------------------------------------------
codul fiecarei litera in cifra

        for(char i='a'; i<='z'; i++){
            int c=i;
            System.out.println(i+" :"+c+".");
        }
--------------------------------------------------------------------------------
преоброзование дясетичных чисел на двоичных чисел
---------------


public class BitCounting {

	public static int countBits(int n){
	int count = 0;
  while (n!=0){
  int a = n%2;
  if(a==1){
  count++;
  }
  n= n/2;
  }
  return count;
	}
	
}



--------------------------------------------------------------------------------
de mai sus functia din java

package ua;

public class Main_v3 {
    public static void main(String[] args) {
        int num = 15;
        System.out.println(Integer.bitCount(num));
    }
}

--------------------------------------------------------------------------------
Verificam Values din HashMap

    public void verificam () {

        HashMap<Integer, Integer> teams = new HashMap<Integer, Integer>();

            teams.put(1, 5);
            teams.put(2, 6);
            teams.put(3, 9);
            teams.put(5, 8);

Collection<Integer> a = teams.values();

if(a.contains(5)) {
    System.out.println(a);
}else System.out.println("Nu este");
    }
	
	Rezultatul: [5, 6, 9, 8]






------------------------------------------------------------------------------------------
zapustim un metod in alt class cu anumiti parametri String si Integer:
-------------------
Main.java
-------------------
package com.company;

public class Main {
    public int main = 5;

    public static void main (String[] args) {

        Player u = new Player();
        u.say("Ion" , 3);

    }
}

-------------------
Player.java
-------------------
package com.company;

public class Player{


public void say (String numele, Integer numarul) {

        System.out.println("Numele este: " + numele + numarul);
    }
}


Rezultatul:  Numele este: Ion3





--------------------------------------------------------------------------------
zapustim un metod in alt class
-------------------
Main.java
-------------------
package com.company;

public class Main {
    public int main = 5;

    public static void main (String[] args) {

        Player u = new Player();
        u.say();

    }
}
-------------------
Player.java
-------------------
package com.company;

public class Player{


public void say () {

        System.out.println("Numele este: " );
    }
}


Rezultatul:  Numele este: 
--------------------------------------------------------------------------------
luam date din alt class:
-------------------
Main.java
-------------------
package com.company;

public class Main {
    public static void main (String[] args) {


            Player tu = new Player();

            int u = tu.doi;
            
            System.out.println("eu :" + u );
    }
}

-------------------
Player.java
-------------------
package com.company;

public class Player{

    int eu = 2;
    int doi = 5;
}

Rezultatul: eu :5





--------------------------------------------------------------------------------
HashMap
--------------------------------------------------------------------------------
package com.company;
import java.util.HashMap;

public class Main {

    public static void main(String[] args) {
        HashMap<Integer, String> team1 = new HashMap<Integer, String>();
        team1.put(1 , "Unu");
        team1.put(2 , "Doi");

        System.out.println("unu : " + team1);
        System.out.println(team1.containsValue("Doi"));
        System.out.println(team1.containsKey(0));
    }

    }
	
	
Rezultatu; :

unu : {1=Unu, 2=Doi}
true
false
--------------------------------------------------------------------------------

ArrayList
--------------------------
package com.company;
import javax.swing.JFrame;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
ArrayList<Integer> team1 = new ArrayList<>();
        team1.add(1);
        team1.add(2);
        team1.add(3);
        team1.add(4);
        team1.add(8);
        for(Integer x : team1) {
          System.out.print(x);
        }
    }
}

Rezultatul = 12348
--------------------------------------------------------------------------------
Array 2 liste compar suma dintre ele
--------------------------------------------------------------------------------
package com.company;
import javax.swing.JFrame;
import java.util.ArrayList;

public class Main<a, b> {
    public static void main(String[] args) {
        int a = 0;
        int b = 0;
        int u;
ArrayList<Integer> team1 = new ArrayList<>();
        team1.add(1);
        team1.add(2);
        team1.add(3);
        team1.add(4);
        team1.add(8);
                for(Integer x : team1) {
            a += x;
         }

        ArrayList<Integer> team2 = new ArrayList<>();
        team2.add(1);
        team2.add(2);
        team2.add(3);
        team2.add(4);
        team2.add(7);
                for(Integer c : team2) {
            b += c;
        }
        System.out.println(a+ "  si "+ b);
        u = (Math.max(a, b));
        System.out.println(u);
    }
}

Rezultatul = 18  si 17
				18
--------------------------------------------------------------------------------

package com.company;
import java.lang.String;
public class Main {

    public static void main(String[] args) {
	// write your code here
        System.out.println("Salut!");
        System.out.print("Buna Ziua!");
        System.out.println("Larevedere!");

        int numarul = 61;
        float cifra = 35.614f;
        System.out.println(cifra);

        boolean booleanNumar = true;
        System.out.println(booleanNumar);

        char unSimbol = 'M';
        System.out.println(unSimbol);

        String fraza = "fraza intreaga in codul string";
        System.out.println(fraza);
    }
}



------------------------------------------------------------------------------------



Scanner str = new Scanner(System.in);
System.out.println(str.nextLine ());   nextLine  --> text
System.out.println(str.nextInt ());    nextInt  --> cifre
------------------------------------------------------------------------------------


package com.company;
import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
	// write your code here

        Scanner str = new Scanner(System.in);
         System.out.println(str.nextLine());

    }
}

------------------------------------------------------------------------------------

System.out.println("textul scris este: " + str.nextLine ());

------------------------------------------------------------------------------------


package com.company;
import java.lang.String;
import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        // write your code here
        System.out.println("Salut!");
        System.out.print("Buna Ziua!");
        System.out.println("Larevedere!");

        int numarul = 61;
        float cifra = 35.614f;
        System.out.println(cifra);

        boolean booleanNumar = true;
        System.out.println(booleanNumar);

        char unSimbol = 'M';
        System.out.println(unSimbol);

        String fraza = "fraza intreaga in codul string";
        System.out.println(fraza);



        Scanner str = new Scanner(System.in);
        System.out.println("textul scris este: " + str.nextLine ());
        System.out.println(str.nextInt ());


    }
}


------------------------------------------------------------------------------------
System.out.println("Salut!");    ---> arata pe ecran rezultatul

result = first + second;
result = result + 1; --> la rezultatul final se adauga +1
result++;    --->  la rezultat se adauga +1
result--;    --->  la rezultat se scade -1

----------------------------------------------------------------------



package com.company;
import java.lang.String;
import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        // write your code here
        System.out.println("Salut!");
        System.out.print("Buna Ziua!");
        System.out.println("Larevedere!");

        int numarul = 61;
        float cifra = 35.614f;
        System.out.println(cifra);

        boolean booleanNumar = true;
        System.out.println(booleanNumar);

        char unSimbol = 'M';
        System.out.println(unSimbol);

        String fraza = "fraza intreaga in codul string";
        System.out.println(fraza);



        Scanner str = new Scanner(System.in);
        int first, second, result;
        System.out.println("Enter first num: ");
        Scanner num = new Scanner(System.in);
first = num.nextInt();
System.out.print("Enter second Num: ");
second = num.nextInt();
result = first + second;
result = result + 1;
result++;
System.out.println("Result is - " + result);
    }
}


----------------------------------------------------------------------




package com.company;
import java.lang.String;
import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        // write your code here
        System.out.println("Salut!");
        System.out.print("Buna Ziua!");
        System.out.println("Larevedere!");

        int numarul = 61;
        float cifra = 35.614f;
        System.out.println(cifra);

        boolean booleanNumar = true;
        System.out.println(booleanNumar);

        char unSimbol = 'M';
        System.out.println(unSimbol);

        String fraza = "fraza intreaga in codul string";
        System.out.println(fraza);


        Scanner str = new Scanner(System.in);
        int first, second = 50;
        System.out.println("Enter first num: ");
        Scanner num = new Scanner(System.in);
        first = num.nextInt();
        if (first >= second) {
            System.out.print("Num is 10");
            System.out.print("\n");
        } else {
            System.out.print("Num is lower than " + second);
        }
        }
    }

----------------------------------------------------------------------
(else if)


package com.company;
import java.lang.String;
import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        // write your code here
        System.out.println("Salut!");
        System.out.print("Buna Ziua!");
        System.out.println("Larevedere!");

        int numarul = 61;
        float cifra = 35.614f;
        System.out.println(cifra);

        boolean booleanNumar = true;
        System.out.println(booleanNumar);

        char unSimbol = 'M';
        System.out.println(unSimbol);

        String fraza = "fraza intreaga in codul string";
        System.out.println(fraza);


        Scanner str = new Scanner(System.in);
        int first, second = 50;
        boolean isTrue = false;
        System.out.println("Enter first num: ");
        Scanner num = new Scanner(System.in);
        first = num.nextInt();

        isTrue = first == 49;

        if (first >= second || isTrue) {
            System.out.print("Num is 10");
            System.out.print("\n");
        } else if (first == 10)
        System.out.print("Num is 45 Uraaa");
        else {
            System.out.print("Num is lower than " + second);
        }
        }
    }

----------------------------------------------------------------------




package com.company;
import java.lang.String;
import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        // write your code here
        System.out.println("Salut!");
        System.out.print("Buna Ziua!");
        System.out.println("Larevedere!");

        int numarul = 61;
        float cifra = 35.614f;
        System.out.println(cifra);

        boolean booleanNumar = true;
        System.out.println(booleanNumar);

        char unSimbol = 'M';
        System.out.println(unSimbol);

        String fraza = "fraza intreaga in codul string";
        System.out.println(fraza);


        Scanner str = new Scanner(System.in);
        int first, second = 50;
        boolean isTrue = false;
        System.out.println("Enter first num: ");
        Scanner num = new Scanner(System.in);
        first = num.nextInt();

        isTrue = first == 49;

        if (first >= second || isTrue) {
            System.out.print("Num is 10");
            System.out.print("\n");
        } else if (first == 10)
        System.out.print("Num is 45 Uraaa");
        else {
            System.out.print("Num is lower than " + second);
        }
        switch (first) {
            case 51:
                System.out.print("Num is equal 51");
                break;
            case 42:
                System.out.print("Num is equal 42");
                break;
            case 20:
                System.out.print("Num is equal 20");
                break;
            default:
                System.out.print("Num is equal 20");
        }
        }
    }


----------------------------------------------------------------------
Ciclu


package com.company;
public class Main {
    public static void main(String[] args) {
      for (int i = 0; i < 10; i++)  {
          System.out.println(i);


      }

    }
}

----------------------------------------------------------------------
Ciclu

package com.company;
public class Main {
    public static void main(String[] args) {
      for (int i = 200; i > 10; i-= 10)  {
          System.out.println(i);


      }

    }
}

----------------------------------------------------------------------
Ciclu

package com.company;
public class Main {
    public static void main(String[] args) {

boolean isTrue = true;
int j = 0;
while (isTrue) {
    System.out.println(j);
    j += 2;
    if (j > 10)
isTrue = false;


      }

    }
}


----------------------------------------------------------------------
Ciclu

package com.company;
public class Main {
    public static void main(String[] args) {
      //for (int i = 200; i > 10; i-= 10)
          //System.out.println(i);
boolean isTrue = true;
int j = 0;
while (isTrue) {
    System.out.println(j);
    j += 2;
    if (j > 10)
isTrue = false;
      }
int x = 11;
do {
    x --;
System.out.println(x);
} while (x > 1);
    }
}


----------------------------------------------------------------------
masiv
in masiv numerotarea se incepe de la 0



package com.company;
public class Main {
    public static void main(String[] args) {
	int[] name = new int[5]; // 5 elemente in masiv
     name[4] = 23;  //   elementul 4 are valoarea 23
	 name[3] = 15;
	 System.out.println(name[4]);
    }
}

---------------------------------------------------------------------
masiv alt fel mai ushor acelashi cod de mai sus

package com.company;
public class Main {
    public static void main(String[] args) {
        int[] name = new int[] {23,34,56};
        System.out.println(name[2]);
    }
}

rezultatul = 34  fiindca numararea se incepe de la 0
---------------------------------------------------------------------

package com.company;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        int[] a;
        int n;
        Scanner in = new Scanner(System.in);
        System.out.print("Enter numbers of array: ");
        n = in.nextInt();
        a =new int [n];
        for (int i = 0; i < n; i++) {
            System.out.print("Enter a[" + i + "] = ");
            a[i] = in.nextInt ();
        }
    }
}
int[] = new int[3];

---------------------------------------------------------------------
2 masive

package com.company;
public class Main {
    public static void main(String[] args) {
        char [][] array = new char[3][4];
        array[0][1] = 'C';  // primul element din masivul 1 si al doilea element din masivul 2
        System.out.println(array[0][1]);
    }
}


---------------------------------------------------------------------
Functii   3 la puterea 4

package com.company;
public class Main {
 public static void main(String[] args) {
 int temp = func (3, 4);
 System.out.println(temp);
 }
public static int func (int a, int b){
 int result = 1;
 for (int i = 0; i < b; i++)
 result *= a;
 return result;
  }
 }

---------------------------------------------------------------------
Functii    3 la puterea 4 a doua metoda

package com.company;
public class Main {
    public static void main(String[] args) {
        func (3, 4);
    }
    public static void func (int a, int b){
        int result = 1;
        for (int i = 0; i < b; i++)
            result *= a;
        System.out.println(result);
    }
}

--------------------------------------------------------------------
Functii date intr-un masiv

package com.company;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        func (3, 4);
    }
	 public static int[] readArray (){
	int[] arr;
	int n;
	Scanner in = new Scanner(System.in);
	n = in.nextInt();
	arr = new int[n];
	for (int i = 0; i < n; i++)
	arr[i] = in.nextInt();
	return arr;
	}
    public static void func (int a, int b){
        int result = 1;
        for (int i = 0; i < b; i++)
            result *= a;
        System.out.println(result);
    }
}


--------------------------------------------------------------
am adunat valorile din 2 ArrayList
--------------------------------------------------------------


package com.company;
import javax.swing.JFrame;
import java.util.ArrayList;

public class Main<a, b> {
    public static void main(String[] args) {
        int a = 0;
        int b = 0;
        int u;
ArrayList<Integer> team1 = new ArrayList<>();
        team1.add(1);
        team1.add(2);
        team1.add(3);
        team1.add(4);
        team1.add(8);
                for(Integer x : team1) {
            a += x;
         }

        ArrayList<Integer> team2 = new ArrayList<>();
        team2.add(1);
        team2.add(2);
        team2.add(3);
        team2.add(4);
        team2.add(7);
                for(Integer c : team2) {
            b += c;
        }
        System.out.println(a+ "  si "+ b);
        u = (Math.max(a, b));
        System.out.println(u);
    }
}



Rezultatul:  18  si 17
				18
--------------------------------------------------------------



package com.company;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        func (3, 4);
        readArray();
    }
    public static int[] readArray (){
        int[] arr;
        int n;
        Scanner in = new Scanner(System.in);
        n = in.nextInt();
        arr = new int[n];
        for (int i = 0; i < n; i++)
            arr[i] = in.nextInt();
        return arr;
    }
    public static void func (int a, int b) {
        int result = 1;
        for (int i = 0; i < b; i++)
            result *= a;
        System.out.println(result);
    }
}



--------------------------------------------------------------
Legatura dintre 2 faile:
ambele au format .java
Denumirile failurilor se incepe cu litera mare

failul -> Main.java
---------
package com.company;

public class Main {

    public static void main(String[] args) {
        Persoana viorel = new Persoana();
        System.out.print(viorel.height);
    }
}
----------
failul -> Persoana.java
----------
package com.company;

public class Persoana {
    public int height = 180;
}
-------
rezultatul = 180
--------------------------------------------------------------


Legatura dintre 2 faile (2)

--------
failul -> Main.java
--------
package com.company;

public class Main {

    public static void main(String[] args) {
        Persoana viorel = new Persoana();
        viorel.height = 120;
        viorel.say("tuturor");
        System.out.println(viorel.height);
        Persoana vlad = new Persoana();
        System.out.println(vlad.height);
    }
}
--------
failul -> Persoana.java
--------
package com.company;

public class Persoana {
    public int height = 180;

    public void say(String name) {
        System.out.println("Salut, " + name);
    }
}
----
rezultatul: 

Salut, tuturor
120
180
--------------------------------------------------------------

Constructor

--------
failul -> Main.java
--------
package com.company;

public class Main {

    public static void main(String[] args) {
        Persoana viorel = new Persoana(123);
        viorel.say("tuturor");
        System.out.println(viorel.height);
        Persoana vlad = new Persoana();
        System.out.println(vlad.height);
    }
}

--------
failul -> Persoana.java
--------

package com.company;

public class Persoana {
    public int height = 180;

    public void say(String name) {
        System.out.println("Salut, " + name);
    }
	
	public Persoana () {

	}
	
	
	public Persoana (int h) {
	height = h;
	}
	
	
}



--------------------------------------------------------------

Constructor 2

--------
failul -> Main.java
--------
package com.company;

public class Main {

    public static void main(String[] args) {
        Persoana viorel = new Persoana(123, "viorel");
        viorel.say("tuturor");
        System.out.println(viorel.name + "\'s height is " + viorel.height);
        Persoana vlad = new Persoana();
        System.out.println(vlad.height);
    }
}

--------
failul -> Persoana.java
--------

package com.company;

public class Persoana {
    public int height = 180;
	public String name = "Default";

    public void say(String name) {
        System.out.println("Salut, " + name);
    }
	
	public Persoana () {

	}
	
	
	public Persoana (int h, String n) {
	height = h;
	name = n;
	}
	
	
}


Rezultatul:
 
Salut, tuturor
viorel's height is 123
180


's
--------------------------------------------------------------
Nasledovanie

--------
failul -> Main.java
--------
package com.company;

public class Main {

    public static void main(String[] args) {
        Persoana viorel = new Persoana(123, "viorel");
        viorel.say("tuturor");
        System.out.println(viorel.name + "\'s height is " + viorel.height);
        Persoana vlad = new Persoana();
        System.out.println(vlad.height);

        Persoana dima = new Persoana("Dima");
        System.out.println(dima.name);
        System.out.println("");

        Student freshman = new Student(76, "Viktor", 2);
        freshman.tell();
        System.out.println(freshman.course);
        System.out.println(freshman.name);
    }
}

--------
failul -> Persoana.java
--------

package com.company;

public class Persoana {
    public int height = 180;
    public String name = "Default";

    public void say(String name) {
        System.out.println("Salut, " + name);
    }

    public Persoana () {

    }


    public Persoana (int h, String n) {
        height = h;
        name = n;
    }

    public Persoana (String n) {
        name = n;
    }


}


--------
failul -> Student.java
--------
package com.company;

// class student o sa capete totul de la class Persoana

public class Student extends Persoana {
    int course = 1;

    public Student (int height, String name, int course){
        super(height,name);
        this.course = course;
    }

    void tell () {

        System.out.println(super.name);
    }
}



---------------------------------------------------------
Polimorfizm

-------
main.java
---------

package com.company;

public class Main {

    public static void main(String[] args) {
       Shape[] arr = new Shape[] {new Circle(), new Square(), new Triangle()};
       for (int i = 0; i < arr.length; i++)
           arr[i].draw();

    }
}


-------
Shape.java
---------

package com.company;

public class Shape {
    public void draw () {

    }
}

-------
Circle.java
---------

package com.company;

public class Circle extends Shape {
    public void draw () {
        System.out.println("Cerc");
    }
}

-------
Square.java
---------

package com.company;

public class Square extends Shape {
    public void draw () {
        System.out.println("Patrat");
        }
}

-------
Triangle.java
---------

package com.company;

public class Triangle extends Shape {
    public void draw () {
        System.out.println("Triunghi");
    }
}


-----
Rezultat: 
-------
Cerc
Patrat
Triunghi

---------------------------------------------------------
Вложенные классы

-------
Main.java
---------
package com.company;
public class Main {
public static void main(String[] args) {
Computer comp = new Computer();
comp.i7.start();
comp.transfer.start();
comp.transfer.shutdown();

new Computer() {
void superComp () {
this.i7.start();
this.transfer.start();
}
};
}
}

-------
Computer.java
---------
package com.company;
public class Computer {

class Processor {
private boolean isStart = false;
public void start () {
isStart = true;
System.out.println("isStart = " + isStart);
}

public void shutdown () {
isStart = false;
}
}

class Ram {
private boolean isStart = false;
public void start () {
isStart = true;
}

public void shutdown () {   //metod
isStart = false;
}
}

Processor i7 = new Processor();
Ram transfer = new Ram();

}

---------------------------------------------------------
Абстрактные классы


-------
Main.java
---------
package com.company;
public class Main {
public static void main(String[] args) {
Shape circle = new Circle();
circle.draw(); //class.metod
}
}


-------
Shape.java
---------

package com.company;
public abstract class Shape {
abstract public void draw () ;  // la abstractniie metode din abstractnii class nu se pune paranteze ascutite {} ;
} 

abstractnii class nu poate avea obiecte

-------
Circle.java
---------
package com.company;
public class Circle extends Shape {
public void draw () {
System.out.println("Круг");
}
}


----------------------------------------------------------------


области видимости
-----------------

package com.company;
public class Main {

int x = 0;

public static void main(String[] args) {   // metod
System.out.println(this.x);  // this. --> face ca sa caute peremenaia in afara metodei

int x = 0;
System.out.print(x); // acuma vede peremenaia din metoda ca se afla in aceasta metoda.
}

----------------------------------------------------------------

Перегрузка методов

package com.company;
public class Main {
public static int summ (int a, int b) {
return a + b;
}
public static int summ (int a, int b, int g) {
return a + b + g;
}

public static float summ (float a, float b, float g) {
return a + b + g;
}
// void - ничего не возврашает

public static void main(String[] args) {
System.out.println(summ(23, 12));
System.out.println(summ(23, 12, 15));
System.out.println(summ(23.25f, 12.25f, 15.25f));
}
}


----------------------------------------------------------------
class.metod
Модификаторы static и final

-------
Main.java
---------
package com.company;

public class Main {
public static void main(String[] args) {
int x = Math.mult(12, 23);
System.out.println(x);
Math a = new Math(); //unde a --> peremenaia din clasul Method
System.out.println(a.x); //peremenaia.metod
a.x = 24;
System.out.println(a.x);
Math b = new Math(); //b --> peremenaia noua
System.out.println(b.x);  // b.x --> peremenaia.metod din clasul Math
}
}


-------
Math.java
---------

package com.company;
public class Math {
public static int x = 12;

public static int summ (int a, int b) {
return a + b;
}
public static int mult (int a, int b) {
return a * b;
}
}


----------------------------------------------------------------
Интерфейсы 
automat sunt de categoria static и final


-------
Main.java
---------
package com.company;
public class Main {
public static void main(String[] args) {
Array a = new MyArray();
System.out.println(a.Add(3));
System.out.println(a.Add(23));
System.out.println(a.Add(34));
System.out.println(a.Add(7));
System.out.println(a.Add(8));
System.out.println(a.Get(3));

System.out.println("");
Array b = new Array_1();
System.out.println(b.Add(3));
System.out.println(b.Add(23));
System.out.println(b.Add(34));
System.out.println(b.Add(7));
System.out.println(b.Add(8));
System.out.println(b.Get(2));
}
}



-------
Array.java
---------

package com.company;
public interface Array {
int Get (int i);   // fiecare metod este abstract
int Add (int val);
}

-------
MyArray.java
---------
package com.company;
public class MyArray implements Array {  //in loc de extends scrim implements la  Interfaisuri

int a[] = new int[50];
int size = 0;

@Override
public int Get (int i) {
return a[i];
}

@Override
public boolean Add (int val) {
if (size != a.length) {
a[size] = val;
size++;
return true;
} else return false;
}
}

-------
Array_1.java
---------

package com.company;
public class Array_1 implements Array {  //in loc de extends scrim implements la  Interfaisuri

int a[] = new int[50];
int size = 0;

@Override
public int Get (int i) {
if (i < a.length)
return a[a.length - i - 1];
else return a[0];
}

@Override
public boolean Add (int val) {
if (size != a.length) {
a[size] = val;
size++;
return true;
} else return false;
}
}


---------------------------------------------------------------------

Запись и чтение данных из файлов (Java io)
-------------
Main.java
-------------



package com.company;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;    //acestea sunt biblioteci pentru crearea si redactarea failurilor
//import java.io.BufferedReader;
//import java.io.FileReader;

public class Main {
    public static void main(String[] args) {

        try {
            File file = new File("newFile.txt"); //aici se creaza un fail nou in mapa cu sborca
            if(!file.exists())  //verificare --> daca failul Nu existe atunci:
                file.createNewFile(); //se creaza un fail nou

            PrintWriter pwi = new PrintWriter(file); //acest cod scrie in failul creat;  pw--> obiect nou creat
            pwi.println("Totul este bine si lucreaza"); //textul scris;  pw--> obiect nou creat
            pwi.println("S-a creat failul");
            pwi.close();                                //failul se inchide
        } catch(IOException e) {                   //in caz ca apare eroare vom vedea aceasta
            System.out.println("Error: " + e);
        }
    }
}

Rezultatul: S-a creat un fail cu denumirea newFile si text in el.


---------------------------------------------------------------------------


-------------
Main.java
-------------

Cream failul; scrim date in el si citim aceste date din fail si aratam textul din fail.

package com.company;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;    //acestea sunt biblioteci pentru crearea si redactarea failurilor
import java.io.BufferedReader;  //citeste datele din failul creat
import java.io.FileReader;    //citeste datele din failul creat

public class Main {
    public static void main(String[] args) {
        BufferedReader br = null;  //cream obiectul pentru ca sa citim datele din failul creat
        try {
            File file = new File("newFile.xml"); //aici se creaza un fail nou in mapa cu sborca
            if (!file.exists())  //verificare --> daca failul Nu existe atunci:
                file.createNewFile(); //se creaza un fail nou

            PrintWriter pwi = new PrintWriter(file); //acest cod scrie in failul creat;  pw--> obiect nou creat
            pwi.println("Smak my bich up!"); //textul scris;  pw--> obiect nou creat
            pwi.println("S-a creat failul");
            pwi.println("2Lineage.Ru");
            pwi.close();//failul se inchide
            br = new BufferedReader(new FileReader("newFile.xml"));  //citeste datele din acest fail dupa ce a fost creat failul si a fost scris in el date
            String line;                               //creeam o linie in care o sa introducem datele citite
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }

        } catch (IOException e) {                   //in caz ca apare eroare vom vedea aceasta
            System.out.println("Error: " + e);
        }
        finally {
            try {
                br.close();
            } catch (IOException e) {  //prinde eroarea daca va fi
                System.out.println("Error: " + e);
            }
        }
    }
}

---------------------------------------------------------------------------
Потоки данных
----------
Main.java
------------
package com.company;

class SomeThread extends Thread {  // naslednic la clasul Thread
    public void run() {
        for(int i = 0; i < 10; i++)
        System.out.println("Number is: " + i);
    }
}

public class Main {
    public static void main(String[] args) {
        SomeThread test = new SomeThread();
        test.start();  //start - creaza patoc paralel
    }
}



---------------------------------------------------------------------------

Потоки данных paralele - patoki  2

package com.company;

class SomeThread extends Thread {  // naslednic la clasul Thread
    public void run() {   //run -> porneshte metod simplu
        for(int i = 0; i < 10; i++)
        System.out.println("Number is: " + i);
    }
}

public class Main {
    public static void main(String[] args) {
        SomeThread test = new SomeThread();
        test.start();  // start -> creeaza patok paralel

        SomeThread test1 = new SomeThread(); //metod test1
        test1.start();  // start creeaza patok paralel
    }
}


---------------------------------------------------------------------------

Потоки данных paralele - patoki 3 lucreaza paralel cu failul main din exemplul de mai sus
-------------
Inter.java
-------------

package interface_java;   //interface_java

class Some implements Runnable {

    @Override
    public void run() {   //run -> porneshte metod simplu
        for (int i = 0; i < 10; i++)
            System.out.println("Number is: " + i);

    }
}

    public class Inter {
        public static void main(String[] args) {
            Thread new_one = new Thread(new Some());
            Thread new_two = new Thread(new Some());
            new_one.start();
            new_two.start();
        }
    }


---------------------------------------------------------------------------
Mareshte cu +1 datele
----------
main.java
----------

package com.company;
public class Main {
    public static void main(String[] args) {
        int i = 3;
        int k = 5;
        i = count(i);
        k = count(k);
        System.out.println(i);
        System.out.println(k);
    }

    private static int count(int x){
        x = x + 10 - 1;
        return x;
    }
}

---------------------------------------------------------------------------

Citeshte datele introduse de pe tastatura (Scanner)--> introducem biblioteca Scanner
Citeshte datele din alt fail (Reader)
Mareshte datele +1

----------
Main.java
----------

package com.company;
public class Main {
    public static void main(String[] args) {
        Reader r = new Reader(); //citeste datele din failul Reader --> SSilka
        r.Scan();  // citeshtele textul din clasul Scan din failul Reader.java
r.i = count(r.i);  //count este metodul descris mai jos: x=x+1
r.k = count(r.k);
System.out.println(r.i);
System.out.println(r.k);
    }

    private static int count(int x){
        x = x + 1;
        return x;
    }
}

----------
Reader.java
----------

package com.company;

import java.util.Scanner;  //biblioteca pentru a citi datele de pe tastatura
public class Reader {
    int i;
    int k;
    public void Scan(){
      System.out.println("Introduceti primul numar");
      Scanner scn = new Scanner(System.in);  //citeshte datele introduse de pe tastatura
      i = scn.nextInt();
     System.out.println("Introduceti al doilea numar");
       k = scn.nextInt();
    }
}


Rezultatul: 
cere sa introducem datele si le calculeaza apoi afisheaza rezultatul
-----------------------------------------------------------------------------------------------------------------

GUI - deschidem fereastra in care introducem numere 
-------
Main.java
-------

package com.company;
public class Main {
    public static void main(String[] args) {
        dick r = new dick(); //citeste datele din failul Reader --> SSilka
        r.Scan();  // citeshtele textul din clasul Scan din failul Reader.java
        r.i = count(r.i);  //count este metodul descris mai jos: x=x+1
        r.k = count(r.k);
        r.Scan(r.i, r.k);
    }

    private static int count(int x){
        x = x + 1;
        return x;
    }
}

--------------
dick.java
--------------

package com.company;
import javax.swing.JOptionPane; //deschide fereastra

public class dick {
    int i, k;
    String n1, n2;

    public void Scan(){
        n1 = JOptionPane.showInputDialog("Introduceti primul numar"); //deschide fereastra cu acest text
        n2 = JOptionPane.showInputDialog("Introduceti al doile numar");
        i = Integer.parseInt(n1); //transforma textul cifrelor din String in tip de date int
        k = Integer.parseInt(n2);

    }

    public void Scan(int a, int b){
        JOptionPane.showMessageDialog(null, "Acum primul numar = "+a); //null - in centru ecranului o sa arate mesajul
        JOptionPane.showMessageDialog(null, "Acum al doilea numar = "+b);

    }
}
---------------------------------------------------------------
Creeam fereastra 

--------
Main.java
---------
package com.company;
import javax.swing.JFrame;

public class Main {
    public static void main(String[] args) {
        Real r = new Real("G-gurda");
        r.setVisible(true); //face fereastra vizibila
        r.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //da comanda ce sa faca dupa ce termina calculul sa inchida fereastra sau nu
        r.setSize(300, 250); //gabaritele ferestrei
        r.setResizable(false); //nu da voie ca noi sa modificam gabaritele programei
        r.setLocationRelativeTo(null);  // in centrul ecranului

    }
}


--------------
Real.java
--------------

package com.company;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Real extends JFrame{  //am transformat clasul in fereastra
    JButton b1, b2;  //butoanele
    JLabel l1, l2, l3, l4;
    JTextField t1, t2; //loc pentru a scri textul de pe tastatura
    int i, k;
    String a, b;
    public Real(String s){
        super(s);
        setLayout(new FlowLayout()); //face ca toate elementele din fereastra sa fie una linga alta
        b1 = new JButton("De Sters");
        b2 = new JButton("De Calculat");
        l1 = new JLabel("Introduceti primul numar");
        l3 = new JLabel("");
        l2 = new JLabel("Introduceti al doilea numar");
        l4 = new JLabel("");
        t1 = new JTextField(10);  //loc pentru 10 simbole
        t2 = new JTextField(10);
        add(b1);
        add(b2);   //add adauga pe ecran datele
        add(l1);
        add(l3);
        add(t1);
        add(l2);
        add(l4);
        add(t2);
    }
}

---------------------------------------------------------------------
Creeam fereastra (2) calcula si sterge datele 

--------
Main.java
---------
package com.company;
import javax.swing.JFrame;

public class Main {
    public static void main(String[] args) {
        Real r = new Real("G-gurda");//Ssilka la failul Real
        r.setVisible(true); //face fereastra vizibila
        r.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //da comanda ce sa faca dupa ce termina calculul sa inchida fereastra sau nu
        r.setSize(300, 250); //gabaritele ferestrei
        r.setResizable(false); //nu da voie ca noi sa modificam gabaritele programei
        r.setLocationRelativeTo(null);  // in centrul ecranului

    }
}


--------------
Real.java
--------------
package com.company;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


public class Real extends JFrame {  //am transformat clasul in fereastra
    JButton b1, b2;  //butoanele
    JLabel l1, l2, l3, l4;
    JTextField t1, t2; //loc pentru a scri textul de pe tastatura
    int i, k;
    String a, b;
    eHandler handler = new eHandler(); //am facut ssilka pentru ca cnopka sa lucreze

    public Real(String s) {
        super(s);
        setLayout(new FlowLayout()); //face ca toate elementele din fereastra sa fie una linga alta
        b1 = new JButton("De Sters");
        b2 = new JButton("De Calculat");
        l1 = new JLabel("Introduceti primul numar");
        l3 = new JLabel("");
        l2 = new JLabel("Introduceti al doilea numar");
        l4 = new JLabel("");
        t1 = new JTextField(10);  //loc pentru 10 simbole
        t2 = new JTextField(10);
        add(b1);
        add(b2);   //add adauga pe ecran datele
        add(l1);
        add(t1);
        add(l2);
        add(t2);
        add(l3);
        add(l4);
        b2.addActionListener(handler);
        b1.addActionListener(handler);
    }

 public class eHandler implements ActionListener{
        public void actionPerformed(ActionEvent e) { //metodul ista face ca programul sa inteleaga ca noi apasam butonul iar - e - este ceea ce facem
            if (e.getSource() == b2) {
                int i = Integer.parseInt(t1.getText()); //citeshte datele care le-am scris de pe tastatura
                int k = Integer.parseInt(t2.getText());
                i++;
                k++;
                a = "Primul numar este                       " + i;
                b = "Al doilea numar este                    " + k;
                l3.setText(a);
                l4.setText(b);
            }
            if (e.getSource() == b1) {
                t1.setText(null);//null inseamna ca nu va scri nimic aici
                t2.setText(null);
                l3.setText(null);
                l4.setText(null);
            }
        }
    }
}

----------
Rezultatul - se deschide fereastra in care calcula si stergem

----------------------------------------------------------------

Creeam fereastra (3) calcula si sterge datele si verifica eroare daca scrim litere in loc de cifre

--------
Main.java
---------

package com.company;
import javax.swing.JFrame;

public class Main {
    public static void main(String[] args) {
        Real r = new Real("G-gurda");//Ssilka la failul Real
        r.setVisible(true); //face fereastra vizibila
        r.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //da comanda ce sa faca dupa ce termina calculul sa inchida fereastra sau nu
        r.setSize(300, 250); //gabaritele ferestrei
        r.setResizable(false); //nu da voie ca noi sa modificam gabaritele programei
        r.setLocationRelativeTo(null);  // in centrul ecranului

    }
}




--------------
Real.java
--------------

package com.company;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


public class Real extends JFrame {  //am transformat clasul in fereastra
    JButton b1, b2;  //butoanele
    JLabel l1, l2, l3, l4;
    JTextField t1, t2; //loc pentru a scri textul de pe tastatura
    int i, k;
    String a, b;
    eHandler handler = new eHandler(); //am facut ssilka pentru ca cnopka sa lucreze

    public Real(String s) {
        super(s);
        setLayout(new FlowLayout()); //face ca toate elementele din fereastra sa fie una linga alta
        b1 = new JButton("De Sters");
        b2 = new JButton("De Calculat");
        l1 = new JLabel("Introduceti primul numar");
        l3 = new JLabel("");
        l2 = new JLabel("Introduceti al doilea numar");
        l4 = new JLabel("");
        t1 = new JTextField(10);  //loc pentru 10 simbole
        t2 = new JTextField(10);
        add(b1);
        add(b2);   //add adauga pe ecran datele
        add(l1);
        add(t1);
        add(l2);
        add(t2);
        add(l3);
        add(l4);
        b2.addActionListener(handler);
        b1.addActionListener(handler);
    }

 public class eHandler implements ActionListener{
        public void actionPerformed(ActionEvent e) { //metodul ista face ca programul sa inteleaga ca noi apasam butonul iar - e - este ceea ce facem
            try {  // pentru erori.
                if (e.getSource() == b2) {
                    int i = Integer.parseInt(t1.getText()); //citeshte datele care le-am scris de pe tastatura
                    int k = Integer.parseInt(t2.getText());
                    i++;
                    k++;
                    a = "Primul numar este                       " + i;
                    b = "Al doilea numar este                    " + k;
                    l3.setText(a);
                    l4.setText(b);
                }
                if (e.getSource() == b1) {
                    t1.setText(null);//null inseamna ca nu va scri nimic aici
                    t2.setText(null);
                    l3.setText("");
                    l4.setText("");
                }
            } catch (Exception ex){JOptionPane.showMessageDialog(null, "Introduceti cifre");}  //am scris ex dar nu "e" fiinda "e" se filoseshte in ActionEvent
         }
    }
}


----------------------------------------------------------------
Scaner - introduce datele de pe tastatura (cifra)

package com.company;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Introduceti un numar: ");
        Scanner num = new Scanner (System.in);
        int i;
        i = num.nextInt();
        System.out.println ("Numarul este: " + i);

    }
}




----------------------------------------------------------------
Scaner - introduce datele de pe tastatura (cuvint)


package com.company;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Introduceti un cuvint: ");
        Scanner num = new Scanner (System.in);//daca nu gresesc acest cod citeshte datele de pe tastatura
        String i;
        i = num.nextLine();//acest cod arata datele introduse de pe tastatura
        System.out.println ("Numarul este: " + i);

    }
}

----------------------------------------------------------------
Ascunde eroarea

try {
      if (lnr != null) {
      lnr.close();
}
} catch (Exception e1) {
}


----------------------------------------------------------------

package com.company;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner num = new Scanner (System.in);
        String i = num.nextLine();
        System.out.println("Parola este: " + i);
    }
}

Rezultatul: Introducem cuvintul apoi primim mesajul cu cuvintul introdus
----------------------------------------------------------------


package com.company;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
 float num_1 = 12.51f, num_2 = 5.51f, res, res1;
 res = num_1 % num_2;
 res1 = num_1 / num_2;
 System.out.println ("Restule este : " + res);
 System.out.println ("Impartirea : " + res1);
    }
}


Rezultatul:

Restule este : 1.4899998
Impartirea : 2.2704175
----------------------------------------------------------------
Verificare cu if, else if si else
-------------------------------

public class Main {
    public static void main(String[] args) {
        int i = 90;
        if (i == 234) {
            System.out.println("cifra este: " + 234);
        } else if (i > 100) {
            System.out.println("cifra este mai mare ca 100: ");
        } else {
            System.out.println("cifra este: " + i);
        }
    }
}

Rezultatul:  cifra este: 90
----------------------------------------------------------------

taimer otsheota
----------------------------------------------------------------
package com.company;
import java.util.Timer;
import java.util.TimerTask;

public class Main {
    static int interval = 50;
    static Timer timer;

    public static void main(String[] args) {
        /*Scanner sc = new Scanner(System.in);
        System.out.print("Input seconds => : ");
        String secs = sc.nextLine();*/
        int secs = 50;
        int delay = 1000;
        int period = 1000;
        timer = new Timer();
        System.out.println(secs);
        timer.scheduleAtFixedRate(new TimerTask() {

            public void run() {
                System.out.println(setInterval());

            }
        }, delay, period);
    }


    private static final int setInterval() {
        if (interval == 1)
            timer.cancel();
        return --interval;
    }
}

----------------------------------------------------------------
sa scot data
----------------------------------------------------------------
import java.util.Date;

public class Test {

   public static void main(String args[]) {
      // Инициализация объекта date
      Date date = new Date();

      // Вывод текущей даты и времени с использованием toString()
      System.out.println(date.toString());
	  
	  //alt exemplu de a arata data
	  String str = "data este: "+date;
        System.out.println(str);
		
   }
}

----------------------------------------------------------------
Calculatorul ghiceste un numar random si eu treb sa introduc de 3 ori cifre ca sa ghicesc si de fiecare incercare imi va scri mai mare numar sau mai mic trebuie
-----------

package ua;

import java.util.Random;
import java.util.Scanner;

public class NumereDeGhicit {

    private static int u;

    public static void main(String[] args) {
functia();
    }

    public static void functia2 (){
        Scanner str = new Scanner(System.in);
         int i = str.nextInt();
         u = i;
    }

public static void functia (){
    int tryings = 2;
    Random rand = new Random();
    /*int n = rand.nextInt(100);*/ //arata random
    int random = (int) (Math.random() * 100); //arata random
    System.out.println(random);

    System.out.print("Напишите цифру: ");
    functia2();

    while ( u != random){
        if (tryings == 0){
            System.out.print("Вы Проиграли!!!!");
            return;
        }
        System.out.println("Осталось попыток: " + tryings);
        if(random > u){
            System.out.println("Подсказка: (Напишите большую цифру) ");
        } else System.out.println("Подсказка: (Напишите меньшую цифру) ");


        System.out.println("Напиши следуший номер: ");
        tryings = tryings-1;


        functia2();
    }


    System.out.println("Winner !!! " +  random);
}


}


----------------------------------------------------------------
Sifr Cezar decodarea cuvintului:


package ua;

public class ShriftCezarDecodare {
    public static void main(String[] args) {
        StringBuilder res = new StringBuilder();
        String unu = "Rfwzxjf";
        int shifr = 1;
        for(int j = 0; j<33; j++) {
            for (int i = 0; i < unu.length(); i++) {
                char doi = unu.charAt(i);
                char trei = (char) (doi - shifr); // aici schimba litera pe urmatoarea din alfabet
                res.append(trei);
            }
            System.out.println(res);
            shifr = j;
            res.delete(0, unu.length());
        }
    }
}

Raspunsul: gasim din lista cuvintul care poate exista in realitate. Aici va fi : Marusea
----------------------------------------------------------------
Sifr cezar Codarea cuvintului

Marusea
package ua;

public class ShriftCezarCodare {
    public static void main(String[] args) {
        StringBuilder res = new StringBuilder();
        String unu = "Marusea";
        int shifr = 5;
        for(int i = 0; i< unu.length(); i++) {
            char doi = unu.charAt(i);
            char trei = (char) (doi + shifr); // aici schimba litera pe urmatoarea din alfabet
            res.append(trei);
        }
/*
        scoate tot alfabetul in engleza
        for(char i = 'a';i<='z';i++)
        {
            System.out.println(i);
        }*/


/*       scoate codul in cifre a fiecarei litere
            for(char i='a'; i<='z'; i++){
            int c=i;
            System.out.println(i+" :"+c+".");
        }*/
System.out.println(res);

}
}

Raspunsul: Rfwzxjf
----------------------------------------------------------------------
Найдите количество элементов массива, которые отличны от наибольшего элемента не более чем на 10%.
----------------------------------------------------------------------
package ua;

import java.util.ArrayList;

public class MaximNumber {
    public static void main(String[] args) {
        ArrayList<Integer> number = new ArrayList<>();
        int max=100;//Задаем список чисел
        int a =0;
        int c = 0;
        int count = 0;
        for (int i=0; i<max; i++){
            number.add(i);
        }
        for(Integer x : number) {
            if(x > a) {
                a = x;//находим самое большое число
            }
            //вычисляем сколько будет 10%
            c= (a*10)/100;
        }System.out.println("Меньше 10% разницы:");
        for(Integer x : number){
            int d =x;
        if(d > a-c){//выводим из списка числа
            System.out.print ("    " + d + "     ");
            count++;
          }
        }count = count-1; //убираем и числа последнего элемента
        System.out.println ("  ");
        System.out.print(" Количевство элементов меньше 10% от максимального числа = " + count );
    }
}

Raspunsul:  Меньше 10% разницы:
    91         92         93         94         95         96         97         98         99       
 Количевство элементов меньше 10% от максимального числа = 8 

----------------------------------------------------------------------
Functie care arata daca exista asha data sau nu

package ua;

public class Data {
    public static void main(String[] args) {
        int first = (int) (Math.random() * 40);
        int second = (int) (Math.random() * 20);
        int third = (int) (Math.random() * 3020);

        data(first, second, third);

    }
    public static void data (int day, int month, int year) {

        if (day > 31 || month > 12) {
            System.out.println("Такая дата не сущевствует");
            System.out.println( day+ " / " + month+ " / " + year+ " год ");

        }else {System.out.println("Такая дата сущевствует");
            System.out.println( day+ " / " + month+ " / " + year + " год ");}

    }
}

Rezultatul : random scoate o data : 
Такая дата не сущевствует
33 / 9 / 335 год 

----------------------------------------------------------------------

        char ch='b';
        switch(ch)
        {
            case 'd':
                System.out.println("Case1 ");
                break;
            case 'b':
                System.out.println("Case2 ");
                break;
            case 'x':
                System.out.println("Case3 ");
                break;
            case 'y':
                System.out.println("Case4 ");
                break;
            default:
                System.out.println("Default ");
        }


Rezultatul :  Case2
----------------------------------------------------------------------






        String str= String.valueOf(cuv);
        switch(str)
        {
            case "burger":
                System.out.println(" Burger ");
                break;
            case "fries":
                System.out.println(" Fries ");
                break;
            case "chicken":
                System.out.println("Chicken ");
                break;
            case "pizza":
                System.out.println("Pizza ");
                break;
            case "sandwich":
                System.out.println(" Sandwich ");
                break;
            case "onionrings":
                System.out.println(" Onionrings ");
                break;
            case "milkshake":
                System.out.println(" Milkshake ");
                break;
            default:
                System.out.println(" Coke ");
        }




----------------------------------------------------------------------
Sulutia de la problema  milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza

package ua;

public class Kata{

    public static String GetOrder(String input) {

        String Burger =     "burger";
        String Fries =      "fries";
        String Chicken =    "chicken";
        String Pizza =      "pizza";
        String Sandwich =   "sandwich";
        String Onionrings = "onionrings";
        String Milkshake =  "milkshake";
        String Coke =       "coke";


        StringBuilder cuv = new StringBuilder();

        for (int i = 0; i < input.length(); i++) {
            char c = input.charAt(i);
            cuv.append(c);
            String qwe = cuv.toString();
            if(qwe.equals(Milkshake) || qwe.equals(Burger) || qwe.equals(Fries) || qwe.equals(Chicken) || qwe.equals(Pizza)
              || qwe.equals(Sandwich) || qwe.equals(Onionrings) || qwe.equals(Coke) ){
                System.out.print(qwe.toUpperCase().charAt(0) + qwe.substring(1) + " ");
                cuv.delete(0, cuv.length());
            }
        }

       return input;
    }
    public static void main(String[] args) {
        String input = GetOrder("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza");

    }
}

----------------------------------------------------------------------
Scoate tabla inmultirii


int[][] multiplyTab  = new int[10][10];

for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
        multiplyTab[i][j] = (i+1)*(j+1);
        //вывод ряда чисел разделенных знаком табуляции
       	System.out.print(multiplyTab[i][j] + "\t");
   }
   System.out.println();
}

----------------------------------------------------------------------

System.out.printf("%6d%n%6d%n%6d%n%6d%n%6d%n%6d", 666666, 55555, 4444, 333, 22, 1);

Rezultatul: 
666666
 55555
  4444
   333
    22
     1
%n означает перевод строки.

----------------------------------------------------------------------
descifrare la %4d

System.out.printf("%4d", multiplyTab[i][j]);

 «%4d», где d означает вывод десятичного целого числа, а 4  — означает то, что если количество знаков в числе меньше, чем 4, то оно будет спереди дополнено пробелами на недостающее (до 4-х) количество знаков (тем самым подвинуто вправо).


----------------------------------------------------------------------

System.out.printf("%1$+020.10f", Math.PI);

Разберем данную инструкцию с конца:

f — указывает на то, что выводим число с плавающей точкой.
.10 — выведенное число будет содержать 10 знаков после запятой.
20 — всего выведенное число будет иметь ширину в 20 символов
+0 — недостающие (до 20-ти) символы будут заполнены нулями, перед числом будет указан знак (+)
1$ — данный формат применяется к первому аргументу, который находится после строки форматирования. В данном примере это было указывать не обязательно.


----------------------------------------------------------------------



Использование printf для форматирования в Java
Метод printf() принадлежит классу PrintStream, который отвечает за вывод информации. Уже знакомые нам методы print() и println() также являются методами класса PrintStream. 

Метод printf определен следующим образом:

printf(String format, Object... args)
Первый аргумент format это строка, определяющая шаблон, согласно которому будет происходить форматирование. Для ее записи существуют определенные правила.

В предыдущем примере формат был «%4d», где d означает вывод десятичного целого числа, а 4  — означает то, что если количество знаков в числе меньше, чем 4, то оно будет спереди дополнено пробелами на недостающее (до 4-х) количество знаков (тем самым подвинуто вправо).

Для наглядности приведем еще один пример, который выводит столбиком несколько чисел.

System.out.printf("%6d%n%6d%n%6d%n%6d%n%6d%n%6d", 666666, 55555, 4444, 333, 22, 1);
На консоль будет выведено:

666666
 55555
  4444
   333
    22
     1
Здесь в строке форматирования мы использовали несколько раз %6d%n, где каждое %6d задает формат для одного из чисел, указанных далее в качестве аргументов. Первое %6d форматирует число 666666, второе %6d форматирует 55555 и т.д. %n означает перевод строки.  Поскольку ко всем числам было применено форматирование %6d, то числа, которые содержат менее 6 знаков подвинуты вправо на недостающее количество знаков и тем самым красиво выровнены.

Данный пример иллюстрирует также то, что метод printf  может содержать несколько аргументов после строки с форматом.  На что указывает Object… args в сигнатуре метода. Эти аргументы должны соответствовать ссылкам на них в строке формата. Например, если в строке формата стоит символ d, отвечающий за вывод целого десятичного числа, а далее в аргументе вы укажете строку, при компиляции произойдет ошибка преобразования формата  java.util.IllegalFormatConversionException. Если аргументов больше, чем определено в формате, то лишние аргументы будут игнорироваться.

Общий вид инструкции форматирования следующий:

%[argument_index$][flags][width][.precision]conversion
 % — специальный символ, обозначающий начало инструкций форматирования.
 [argument_index$] — целое десятичное число, указывающее позицию аргумента в списке аргументов. Ссылка на первый аргумент "1$", ссылка на второй аргумент "2$" и т.д. Не является обязательной частью инструкции. Если позиция не задана, то аргументы должны находиться в том же порядке, что и ссылки на них в строке форматирования.
[flags] — специальные символы для форматирования. Например, флаг "+" означает, что числовое значение должно включать знак +, флаг "-" означает выравнивание результата по левому краю, флаг «,» устанавливает разделитель тысяч у целых чисел. Не является обязательной частью инструкции.
[width] — положительное целое десятичное число, которое определяет минимальное количество символов, которые будут выведены.  Не является обязательной частью инструкции.
[.precision] — не отрицательное целое десятичное число с точкойперед ним. Обычно используется для ограничения количества символов. Специфика поведения зависит от вида преобразования. Не является обязательной частью инструкции.
conversion — это символ, указывающий, как аргумент должен быть отформатирован. Например d для целых чисел, s для строк, f для чисел с плавающей точкой. Является обязательной частью инструкции.
Все возможные флаги и преобразования (conversion) указаны в официальной документации. Здесь мы не ставим цель изучить их все, наша цель — научиться применять форматирование. Поэтому рассмотрим несколько примеров.

Пример 1. Наглядный пример инструкции форматирования в ее полном виде приведен на следующей картинке:

format

Если мы применим формат с картинки к числу Pi

System.out.printf("%1$+020.10f", Math.PI);
Получим следующий результат на консоли:

+00000003,1415926536
Разберем данную инструкцию с конца:

f — указывает на то, что выводим число с плавающей точкой.
.10 — выведенное число будет содержать 10 знаков после запятой.
20 — всего выведенное число будет иметь ширину в 20 символов
+0 — недостающие (до 20-ти) символы будут заполнены нулями, перед числом будет указан знак (+)
1$ — данный формат применяется к первому аргументу, который находится после строки форматирования. В данном примере это было указывать не обязательно.
Пример 2. Рассмотрим пример демонстрирующий вывод на консоль до знакомства с форматированием и после.

Без форматирования

Integer i=675;
double root;
root = Math.sqrt(i);
System.out.println("Корень числа " + i + " равен " + root );
На консоль будет выведено:

Корень числа 675 равен 25.98076211353316
В этом случае преобразование кода в строку автоматически генерируется компилятором Java. Этот способ плох тем, что при большом количестве переменных и текста для вывода, легко потерять контроль над результатами.

С форматированием

Integer i=675;
double root;
root = Math.sqrt(i);
System.out.printf("Корень числа %d равен %f", i, root );
Где %d отвечает за вывод значения переменной i, а %f  за вывод значения переменной root. При этом мы уже не используем конкатенацию.

На консоль будет выведено:

Корень числа 675 равен 25,980762
Как мы видим, формат автоматически округляет число до 6 знаков после запятой. Однако, при форматировании мы можем устанавливать такое количество знаков после запятой, которое нам нужно, например:

System.out.printf("Корень числа %d равен %.2f", i, root );
Выведет число с двумя знаками после запятой.

Далее на примерах рассмотрим наиболее популярные правила форматирования.


Форматирование целых чисел
Вывод целого числа

System.out.printf("%d", 7845); // --> "7845"
Вывод целого числа с разделением тысяч

System.out.printf("%,d", 7845); // --> "7 845"
Число менее 7 знаков будет «подвинуто» вправо на недостающее количество знаков.

System.out.printf("%7d", 7845); // --> "   7845"
Число менее 7 знаков будет дополнено нулями слева на недостающее количество знаков.

System.out.printf("%07d", 7845); // --> "0007845"
Число будет дополнено знаком + и, если оно менее 7 знаков, то будет дополнено нулями на недостающее количество знаков.

System.out.printf("%+07d", 7845); //--> "+007845"
Число будет выровнено по левому краю и, если оно менее 7 знаков, то будет дополнено пробелами справа на недостающее количество знаков.

System.out.printf("%-7d", 7845); // --> "7845   "
Разумеется вместо 7 можно использовать любое другое положительное целое число.


Форматирование чисел с плавающей точкой
Вывод числа e. Автоматическое округление до 6 знаков после запятой.

System.out.printf("%f", Math.E); // --> "2,718282"
Число менее 10 знаков будет «подвинуто» вправо на недостающее количество знаков.

System.out.printf("%10f", Math.E); // --> "  2,718282"
Число менее 10 знаков будет дополнено нулями слева на недостающее количество знаков.

System.out.printf("%010f", Math.E); // --> "002,718282"
Число будет дополнено знаком + и, если оно менее 10 знаков, то будет дополнено нулями на недостающее количество знаков.

System.out.printf("%+010f", Math.E); // --> "+02,718282"
Число будет выведено с 15 знаками после запятой.

System.out.printf("%.15f", Math.E); // --> "2,718281828459045"
Число будет выведено с  3-мя знаками после запятой и, если оно менее 8 символов, то  будет «подвинуто» вправо на недостающее количество знаков.

System.out.printf("%8.3f", Math.E); // --> "   2,718"
Число будет выровнено по левому краю, выведено с  3-мя знаками после запятой и, если оно менее 8 знаков, то будет дополнено пробелами справа на недостающее количество знаков.

System.out.printf("%-8.3f", Math.E); // --> "2,718   "

Форматирование строк
Вывод строки.

System.out.printf("%s%n", "Hello"); // --> "Hello"
Если строка содержит менее 10 символов, то «подвинуть » ее вправо на недостающее количество символов.

System.out.printf("%10s%n", "Hello"); // --> "     Hello"
Строка будет выровнена по левому краю и, если она менее 10 символов, то будет дополнена справа пробелами на недостающее количество символов.

System.out.printf("%-10s%n", "Hello"); // --> "Hello     "
Выведет первые 3 символа строки.

System.out.printf("%.3s%n", "Hello"); // --> "Hel"
Выведет первые 3 символа строки и подвинет их вправо на недостающее до 8 количество символов.

System.out.printf("%8.3s%n", "Hello"); // --> "     Hel"

Локализация
В разных странах некоторые записи принято производить по-разному. Например, в одних странах дробное число принято писать с точкой «3.68», а в других с запятой «3,68».  Java нам позволяет соблюдать эти традиции. Метод printf имеет еще одну сигнатуру:

printf(Locale l, String format, Object… args)

Первым аргументом стоит Locale l, который и определяет локализацию. Для того, чтобы использовать локализацию необходимо вначале файла с вашим кодом импортировать библиотеку java.util.Locale.

import java.util.Locale;
Рассмотрим несколько примеров применения:

System.out.printf(Locale.ENGLISH,"%,d%n", 1000000 );// 1,000,000
System.out.printf(Locale.GERMAN,"%,d%n", 1000000 ); // 1.000.000
System.out.printf(Locale.FRANCE,"%,d%n", 1000000 ); // 1 000 000
В зависимости от указанной страны используются разные разделители для тысяч.

System.out.printf(Locale.ENGLISH,"%.2f%n", 9.87 ); //9.87
System.out.printf(Locale.FRANCE,"%.2f%n", 9.87 ); //9,87
В зависимости от указанной страны используются разные разделители  у дробных чисел.

Использование String.format
В случае, если нет необходимости выводить отформатированную строку, а нужно просто ее сохранить для дальнейшего использования (например, для записи в лог или базу данных) следует использовать метод format из класса String.  Принципы форматирования в этом случае абсолютно такие же, как у описанного выше printf, но этот метод вместо вывода строки сохраняет ее как отформатированную строку.

Пример использования:

String s = String.format("Курс валют: %-4s%-8.4f  %-4s%-8.4f","USD", 58.4643, "EUR", 63.3695);
Это далеко не все возможности форматирования в Java. Существуют несколько классов, предназначенных для более сложного форматирования, но их оставим для дальнейших уроков.

Закончить урок хочется примером, в котором используются форматирование всех изученных в этом уроке типов данных: целых чисел, чисел с плавающей точкой и строк.

Пример: Таблица курсов валют

System.out.printf("%-5s%-11s%-25s%-11s%n","Код","За единиц","Валюты","Рублей РФ");
System.out.println("-----------------------------------------------------");
System.out.printf("%-5s%-11d%-25s%-11.4f%n","AUD",1,"Австралийский доллар",44.9883);
System.out.printf("%-5s%-11d%-25s%-11.4f%n","GBP",1,"Фунт стерлингов",86.8429);
System.out.printf("%-5s%-11d%-25s%-11.4f%n","BYR",10000,"Белорусский рубль",39.7716);
System.out.printf("%-5s%-11d%-25s%-11.4f%n","DKK",10,"Датская крона",84.9192);
System.out.printf("%-5s%-11d%-25s%-11.4f%n","USD",1,"Доллар США",58.4643);
System.out.printf("%-5s%-11d%-25s%-11.4f%n","EUR",1,"Евро",63.3695);
System.out.printf("%-5s%-11d%-25s%-11.4f%n","KZT",100,"Казахский тенге",31.4654);
Результат вывода на консоль:

Код  За единиц  Валюты                   Рублей РФ  
-----------------------------------------------------
AUD  1          Австралийский доллар     44,9883    
GBP  1          Фунт стерлингов          86,8429    
BYR  10000      Белорусский рубль        39,7716    
DKK  10         Датская крона            84,9192    
USD  1          Доллар США               58,4643    
EUR  1          Евро                     63,3695    
KZT  100        Казахский тенге          31,4654    



---------------------------------------------------------------------------------------------


creem metodul random generate number

package ua.data.pts;

public class RandomNumberMinMax {

    public static void main(String[] args) {

        int a = rnd(97,101);

        System.out.println(a);

    }

    public static int rnd (int min, int max){

        max = max-min;
        return (int) (Math.random()* max) + min;
    }
}

---------------------------------------------------------------------------------------------



