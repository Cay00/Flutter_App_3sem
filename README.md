Powiedziałeś(-aś):
zrobiłem aplikację na podstawie poniższych instruckji, projekt wrzucił na github i chcę dodać krótki tekst readme na temat funkcjonalnosci i technologii wykorzystanych, napisz 



Programowanie aplikacji mobilnych - instrukcja cwicze ´ n 2024 ´
Autor: mgr inz. Karol Kaluga ˙
1 Warunki zaliczenia cwicze ´ n´
Aby zaliczyc z wynikiem pozytywnym ´ cwiczenia wymagana b˛edzie przynajmniej ´ 50% obecnos´c na ´
zaj˛eciach oraz oddanie projektu wraz ze sprawozdaniem z projektu. Oddanie projektu b˛edzie na
ostatnich zaj˛eciach. Sprawozdanie powinno zawierac imi˛e, nazwisko, nr indeksu nast˛epnie opis pro- ´
jektu (co zostało wykonane, jakies screeny z aplikacji) i wnioski. Projekty b˛ed ˛a Pa ´ nstwo wgrywa ´ c na ´
platformie Moodle. W tej instrukcji b˛ed ˛a szczegółowe wymagania co do projektu, jakie elementy b˛ed ˛a
wymagane. Na zaj˛eciach b˛ed˛e tłumaczył zagadnienia i b˛ed˛e Panstwu pomagał z problemami. Aplikacja ´
musi si˛e kompilowac i uruchomia ´ c na symulatorze lub fizycznym urz ˛adzeniu. Aplikacja ma zawiera ´ c´
funkcjonalnosci opisane w tej instrukcji ´ cwiczeniowej z sekcji 8 Projekt. Prosz˛e zapozna ´ c si˛e z sekcj ˛a 9 ´
Zasady punktacji i oceniania.
2 Tutoriale i literatura
Dart
• YT: Kurs Dart 40min
• Dokumentacja Dart Language
Flutter
• Codelab Flutter: Pierwsza aplikacja
• YT: Flutter kurs PL 100min
• flutter.dev learn
• flutter.dev cookbook
• flutter.dev codelabs
• Baranowski K., Flutter. Podstawy, Helion 2023
• Bailey T., Biessek A., Flutter for Beginners. Cross-platform mobile development from Hello, World!
to app release with Flutter 3.10+ and Dart 3.x - Third Edition, Packt Publishing 2023
3 Dokumentacja
• Dokumentacja Dart Language
• Dokumentacja Flutter
• pub.dev biblioteki Flutter
4 Instalacja Flutter SDK
System Windows
Jesli na Windows nie masz zainstalowanego ´ Chocolatey – zainstaluj wg instrukcji tutaj. Nast˛epnie:
1. Uruchom PowerShell jeszcze raz jako administrator.
2. Wpisz komend˛e:
choco install fvm
3. Wpisz komend˛e:
fvm install 3.24.3
Podczas instalacji wyswietli si˛e dokładna lokalizacja zainstalowanego SDK – zapami˛etaj j ˛a. ´
W Android Studio utwórz New Flutter Project lub w obecnym projekcie zmien lokalizacj˛e SDK na t˛e ´
zainstalowan ˛a (t ˛a czynnos´c wykonaj, gdy ju ´ z zainstalujesz Android Studio). Dzi˛eki instalacji Flutter ˙
SDK w ten sposób w kazdej chwili mo ˙ zemy zainstalowa ˙ c dodatkow ˛a wersj˛e SDK Flutter i mi˛edzy ´
projektami mozemy u ˙ zywa ˙ c ró ´ znych wersji SDK. ˙
System macOS
Analogicznie do instalacji na Windows przeprowad´z instalacj˛e na macOS, posługuj ˛ac si˛e nast˛epuj ˛ac ˛a
dokumentacj ˛a: Dokumentacja FVM. Najlepiej skorzystac z ´ Homebrew.
Podczas instalacji wyswietli si˛e dokładna lokalizacja zainstalowanego SDK – zapami˛etaj j ˛a. W ´ Android
Studio utwórz New Flutter Project lub w obecnym projekcie zmien lokalizacj˛e SDK na t˛e zainsta- ´
lowan ˛a (t ˛a czynnos´c wykonaj, gdy ju ´ z zainstalujesz Android Studio). Dzi˛eki instalacji Flutter SDK w ˙
ten sposób w kazdej chwili mo ˙ zemy zainstalowa ˙ c dodatkow ˛a wersj˛e SDK Flutter i mi˛edzy projektami ´
mozemy u ˙ zywa ˙ c ró ´ znych wersji SDK. ˙
5 Instalacja Android Studio, niezb˛ednych pluginów, stworzenie symulatora smartfona
5.1 Android Studio
Zainstaluj Android Studio. Podczas instalacji upewnij si˛e, ze opcje Android SDK, Android SDK ˙
Platform-tools, Android SDK Build-tools i Android SDK Command-line Tools s ˛a wybrane. Jesli Pa ´ n-´
stwa sprz˛et nie ma wystarczaj ˛acych parametrów, aby uruchamiac i pracowa ´ c z Android Studio mo ´ zna ˙
zainstalowac Visual Studio Code, jednak do uruchamiania aplikacji na symulatorze i tak trzeba zainsta- ´
lowac Android Studio i stworzy ´ c symulator. ´
5.2 Pluginy
Zainstaluj w swoim IDE niezb˛edne pluginy tak jak to pokazano na stronie dla Android Studio lub Visual
Studio Code.
5.3 Stworzenie Android Emulator
W Anndroid Studio stwórz Android Emulator tak jak to pokazano na stronie w sekcji Set up the Android
emulator. Mozesz te ˙ z u ˙ zywa ˙ c swojego fizycznego urz ˛adzenia z systemem Android do instalowania ´
aplikacji, po odpowiedniej konfiguracji smartfona.
6 Skróty klawiszowe w Android Studio
Skrót macOS Windows
Formatowanie kodu option+command+L Ctrl+Alt+L
Komentarz w linii command+/ Ctrl+/
Hot reload command+ Ctrl+
Zduplikowanie kodu command+D Ctrl+D
Owrapowanie widgetu innym
widgetem
option+Enter Alt+Enter
Przeszukanie projektu wg
plików
2xShift 2xShift
Przeszukanie projektu wg
słowa klucza
command+shift+F Ctrl+Shift+F
Przeszukanie pliku wg słowa
klucza
command+F Ctrl+F
Zamiana słowa lub frazy w
pliku
command+R Ctrl+R
Zamiana słowa lub frazy w
całym projekcie
command+Shift+R Ctrl+Shift+R
7 Cwiczenie ´
Ta sekcja nie jest cz˛esci ˛a projektu! Jej celem jest tylko trening i nauka na zaj˛eciach. ´
Stwórz ekran aplikacji jak na Rysunek 1. Zmien go wg poni ´ zszych wskazówek: ˙
1. Paddingi, odst˛epy od poszczególnych elementów mozesz ustawi ˙ c wg własnego wizualnego uznania ´
i estetyki.
2. Usun label ´ DEBUG. Podpowied´z - szukaj odpowiedniego parametru w widget MaterialApp.
3. Zamien w´ AppBar napis "Sample App" na "MobiDSW". Zmien kolor ´ AppBar.
4. Nie umieszczaj tak jak to ma miejsce na Rysunek 1 napisu TutorialKart.
5. Zmien napis ´ "Sign in" na "Logowanie". Wystylizuj go: fontSize: 20, fontWeight:
bold.
6. Zmien napis z ´ "User Name" na "E-mail".
7. Zmien napis z ´ "Password" na "Hasło".
8. Zmien napis z ´ "Forgot Password" na "Zapomniałe´s hasła?". Zrób ten napis klikalny.
9. Pod powyzszym klikalnym tekstem dodaj klikalny ˙ Checkbox.
10. Dodaj Button z tekstem. Zmien napis z ´ "Login" na "Zaloguj".
11. Zmien napis z ´ "Does not have account?" na "Nie masz konta?".
12. Zmien napis z ´ "Sign in" na "Zarejestruj si˛e".
13. Zaimportuj do projektu bibliotek˛e flutter_svg (plik pubspec.yaml). W tym samym pliku
pod uses-material-design: true dodaj:
1 assets:
2 - assets/svg/
14. Stwórz w głównym folderze projektu katalogi assets oraz svg. W katalogu svg umies´c plik ´
.svg. Plik o takim formacie znajd´z w Internecie. Nast˛epnie wyswietl plik ´ .svg na ekranie pod
AppBar.
Rysunek 1: Ekran aplikacji
8 Projekt
8.1 Ekran logowania i rejestracji
Nalezy zaimplementowa ˙ c widoki zgodne z designami udost˛epnionymi przez prowadz ˛acego. Designy ´
aplikacji s ˛a dost˛epne pod nast˛epuj ˛acym linkiem.
Link nalezy otworzy ˙ c w przegl ˛adarce. Na stronie Figma konieczne jest zało ´ zenie konta, co mo ˙ zna ˙
zrobic, loguj ˛ac si˛e przez konto Google. Figma umo ´ zliwia odczytanie wszystkich niezb˛ednych informacji ˙
do implementacji widoków aplikacji, takich jak:
• wysokosci elementów, ´
• paddingi,
• kolory,
• niezb˛edne zasoby (assety),
• wielkosci czcionek. ´
Na Rysunku 2 przedstawione s ˛a widoki ekranów, które z Figmy nalezy zaimplementowa ˙ c. S ˛a to ekran ´
Sign In oraz Sign Up.
Uwaga
Nie ma potrzeby dodawania elementów z Rysunku 3 na ekranie Sign In. Pozostałe elementy ekranu nie
powinny zmieniac swojego poło ´ zenia na skutek braku poni ˙ zszego widoku. ˙
W Figma, aby zobaczyc np. odległo ´ s´c jednego elementu od drugiego, nale ´ zy najecha ˙ c kursorem na ´
pierwszy element i klikn ˛ac lewym przyciskiem myszy (LPM), a nast˛epnie najecha ´ c kursorem na drugi ´
element i wcisn ˛ac:´
• macOS: Option
• Windows: Ctrl
Po nacisni˛eciu klikalnego tekstu ´ Sign Up, aplikacja powinna przenosic u´ zytkownika na ekran ˙ Sign In.
Analogicznie, nacisni˛ecie klikalnego tekstu ´ Sign In równiez powinno prowadzi ˙ c do ekranu logowania. ´
Nacisni˛ecie przycisku ´ Back ma umozliwia ˙ c powrót na ekran ´ Sign In, który jest ekranem startowym
aplikacji. Idea nawigacji we Flutter jest dobrze opisana pod ponizszym linkiem. ˙
Rysunek 2: Ekrany Sign In i Sign Up
Rysunek 3: Elementy do pomini˛ecia na ekranie Sign In
Po nacisni˛eciu przycisku ´ Sign In uzytkownik powinien zosta ˙ c przeniesiony na kolejny ekran, o ile ´
dane (np. e-mail i hasło) wpisane przez uzytkownika b˛ed ˛a zgodne z danymi zaszytymi w kodzie. Ekran ˙
ten nie jest uwzgl˛edniony w powyzszym linku do Figma i na razie mo ˙ ze by ˙ c pusty - ´ Home Screen.
B˛edzie to ekran główny aplikacji w przyszłosci w naszym projekcie. ´
Po nacisni˛eciu przycisku ´ Sign In powinna nast˛epowac walidacja wpisanych danych w polach do wpi- ´
sania e-maila, hasła itp. Nalezy w swoim kodzie uwzgl˛edni ˙ c przykładowe dane: e-mail oraz hasło, które ´
b˛ed ˛a słuzyły do logowania lub rejestracji. ˙
W przypadku wpisania nieprawidłowych danych aplikacja ma wyswietla ´ c informacj˛e, ´ ze dane s ˛a nie- ˙
prawidłowe. Jesli na przykład dane wpisane w polu e-mail b˛ed ˛a bł˛edne, pod tym polem nale ´ zy wy ˙ swie- ´
tlic tekst z napisem: ´ Invalid email. Najlepiej, aby tekst był napisany mał ˛a czcionk ˛a i miał kolor czerwony.
Na Rysunku 4 przedstawiona jest idea tego rozwi ˛azania. B˛edziecie Panstwo przy tworzeniu klas wido- ´
ków musieli stworzyc klasy typu ´ StatelessWidget i StatefulWidget. Pod ponizszymi linkami ˙
znajduje si˛e wyjasnienie, co to jest i jakie s ˛a mi˛edzy nimi ró ´ znice: ˙
• Stateless vs Stateful Widgets - LinkedIn
• Stateful vs Stateless Widgets - GeeksforGeeks
Rysunek 4: Idea wyswietlania walidacji ´
W Android Studio mozna łatwo zmieni ˙ c rozszerzenie klasy ze ´ StatefulWidget na
StatelessWidget i na odwrót. W tym celu trzeba najechac kursorem na ´ StatefulWidget lub
StatelessWidget i wcisn ˛ac (macOS: ´ Option, Windows: Ctrl) oraz wybrac pojawiaj ˛ac ˛a si˛e opcj˛e ´
Convert to.... Zawsze jest mozliwa zmiana ze ˙ StatelessWidget na StatefulWidget, z
kolei nie zawsze b˛edzie mozliwa zmiana na odwrót. Czy b˛edzie mo ˙ zliwa taka zmiana, zale ˙ zy od tego, ˙
jaki mamy kod we wn˛etrzu klasy.
8.2 Kolejne ekrany, shared preferences, SQLite
Shared Preferences:
Przykład uzycia i do wzorowania si˛e: Flutter Cookbook - Shared Preferences ˙
Biblioteka: shared_preferences
SQLite:
Przykład uzycia: Flutter Cookbook - SQLite ˙
Biblioteka: sqflite
Przykład do wzorowania si˛e: YouTube Tutorial
Tutorial SQL: W3Schools - SQL Tutorial
Do naszej aplikacji musimy dołozy˙ c nast˛epuj ˛ace funkcjonalno ´ sci: ´
1. Gdy uzytkownik si˛e loguje, aplikacja zapisuje t˛e informacj˛e w shared preferences. Je ˙ sli u ´ zytkownik ˙
uruchomi aplikacj˛e, a był wczesniej zalogowany, aplikacja uruchamia si˛e na ekranie Home. Je ´ sli ´
nie był zalogowany, aplikacja uruchamia si˛e na ekranie Logowania. Uzytkownik ma mo ˙ zliwo ˙ s´c´
wylogowania si˛e z aplikacji po klikni˛eciu na odpowiedni przycisk na ekranie Home.
2. Trzeba zaimplementowac widok ekranu Home - ekranu widocznego dla u ´ zytkownika po zalogowa- ˙
niu (mechanizm logowania w naszej aplikacji opisany w sekcji 8.1). Wygl ˛ad tego ekranu według
własnego uznania, ale ma byc estetycznie. ´
3. Na ekranie Home uzytkownik ma mo ˙ zliwo ˙ s´c realizacji operacji CRUD, zapisywania danych do ´
bazy danych SQLite. Moze co ˙ s doda ´ c na ekran, usun ˛a ´ c, zmodyfikowa ´ c. Na tym ekranie musi by ´ c´
zrobiona scrollowalna lista, np. przy uzyciu widgetu ˙ SingleChildScrollView(). Jakie dane
b˛ed ˛a przechowywane, zalezy od Pa ˙ nstwa. Mo ´ ze by ˙ c to np. nazwa jakiego ´ s zadania, opis zadania ´
i data modyfikacji (musz ˛a byc przynajmniej trzy pola). B˛edzie to jeden wiersz danych w tabeli w ´
bazie danych, które maj ˛a byc wy ´ swietlone na ekranie. ´
4. Uzytkownik po klikni˛eciu na jeden z takich kafelków na ekranie ma zosta ˙ c przeniesiony do ekranu ´
modyfikacji tego pola lub ma zostac wy ´ swietlony dialog, gdzie u ´ zytkownik b˛edzie mógł zmieni ˙ c´
dane lub usun ˛ac rekord z bazy danych. Ten ekran mo ´ ze by ˙ c wykorzystywany przy tworzeniu no- ´
wego rekordu.
Prosz˛e w pliku pubspec.yaml dodac bibliotek˛e pod znacznikiem ´ dependencies:
very_good_analysis: 6.0.0
Prosz˛e w pliku analysis_options.yaml wkleic nast˛epuj ˛acy kod. IDE b˛edzie podpowiadało ´
dobre praktyki programowania:
include: package:very_good_analysis/analysis_options.yaml
linter:
rules:
public_member_api_docs: false
flutter_style_todos: false
lines_longer_than_80_chars: false
invariant_booleans: false
use_build_context_synchronously: false
sort_constructors_first: false
9 Zasady punktacji i oceniania
Zadanie Punktacja
Poprawny wygl ˛ad ekranu logowania- sam
wygl ˛ad
0-5
Poprawny wygl ˛ad ekranu rejestracji- sam
wygl ˛ad
0-5
Nawigacja mi˛edzy ekranem logowania a
rejestracji
0-1
Zrobiona walidacja danych logowania i
nawigacja do ekranu Home
0-1
Zapis faktu zalogowania do shared preferences i
pó´zniejszy odczyt w celu przekierowania na
prawidłowy ekran
0-1
Zrobienie ekranu do wpisywania danych do
wyswietlenia na ekranie Home ´
0-2
Zrobienie ekranu Home- sam wygl ˛ad, jesli jest ´
bez zapisywania danych do bazy danych, mozna ˙
wyswietli ´ c kilka kafelków z danymi wpisanymi ´
na sztywno
0-3
Operacje CRUD na bazie danych 0-3
Jakos´c i czytelno ´ s´c kodu ´ 0-1
Podzielenie projektu na foldery 0-2
Aplikacja uruchamia si˛e na symulatorze Android 0-1
Obrona projektu- odpowied´z na pytania 0-2
Oddanie sprawozdania jako pdf Warunek konieczny
Przesłanie projektu jako plik .zip Warunek konieczny
Przynajmniej 50% obecnosci ´ Warunek konieczny
Suma punktów do zdobycia: 27
Zakres punktów Ocena
13,5 - 16 pkt. 3.0
16,5 - 19 pkt. 3.5
19,5 - 21,5 pkt. 4.0
22 - 24,5 pkt. 4.5
powyzej 24,5 pkt. ˙ 5.0
10 Wytyczne: sprawozdanie, format pliku projektu
Projekt nalezy wgra ˙ c na platformie Moodle w formie ´ .zip. Zipa zrobic w Android Stu- ´
dio: klikamy File → Export → Export to Zip File.... Zipa nazwac w formacie ´
nazwisko_imi˛e_indeks.
Sprawozdanie jako PDF. Powinno zawierac opis projektu (co zostało zrobione, widoki ekranów) oraz ´
wnioski. Na samej górze imi˛e, nazwisko, indeks.
ChatGPT powiedział:
Oto przykładowa treść pliku README dla Twojego projektu:

Readme
Widzę, że dołączyłeś/aś plik z kodem. Czy mam go przeanalizować pod kątem błędów, optymalizacji, czy może dodać do niego komentarze wyjaśniające? Daj mi znać, jak mogę pomóc! 😊

Powiedziałeś(-aś):
popraw to pisząc jako kod który wkleję w githubie 
# lab1

Aplikacja mobilna - Projekt Flutter

Opis projektu

Aplikacja została stworzona w ramach ćwiczeń z programowania aplikacji mobilnych. Implementuje ekran logowania oraz rejestracji zgodnie z wytycznymi przedstawionymi w instrukcji. Projekt został zrealizowany przy użyciu technologii Flutter oraz języka Dart.

Funkcjonalności

Ekran logowania z walidacją pól (e-mail, hasło)

Ekran rejestracji

Nawigacja pomiędzy ekranami

Obsługa przycisków oraz elementów interaktywnych (np. checkbox, link do odzyskiwania hasła)

Obsługa komunikatów o błędach

Wyświetlanie grafik SVG

Technologie

Flutter - framework do tworzenia aplikacji mobilnych

Dart - język programowania używany w Flutter

flutter_svg - biblioteka do wyświetlania plików SVG

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
ChatGPT powiedział:
Oto poprawiona wersja pliku README w formacie odpowiednim do umieszczenia na GitHubie:

Flutter Lab1 Readme

Zamiast tego odpowiedz w czacie
Teraz README jest bardziej czytelne i zgodne ze standardami GitHub. Możesz go skopiować i wkleić bezpośrednio do swojego repozytorium. Jeśli potrzebujesz dodatkowych sekcji, np. o autorach czy licencji, daj mi znać! 🚀













ChatGPT może popełniać błędy. Sprawdź ważne informacje.
?


Flutter Lab1 Readme







1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
# Lab 1 - Aplikacja mobilna Flutter

## Opis projektu

Aplikacja została stworzona w ramach ćwiczeń z programowania aplikacji mobilnych. Implementuje ekran logowania oraz rejestracji zgodnie z wytycznymi przedstawionymi w instrukcji. Projekt został zrealizowany przy użyciu technologii Flutter oraz języka Dart.

## Funkcjonalności

- **Ekran logowania** z walidacją pól (e-mail, hasło)
- **Ekran rejestracji**
- **Nawigacja** pomiędzy ekranami
- Obsługa przycisków oraz elementów interaktywnych (np. checkbox, link do odzyskiwania hasła)
- Obsługa komunikatów o błędach
- Wyświetlanie grafik SVG

## Technologie

Projekt został zrealizowany przy użyciu następujących technologii:

- **Flutter** - framework do tworzenia aplikacji mobilnych
- **Dart** - język programowania używany w Flutter
- **flutter_svg** - biblioteka do wyświetlania plików SVG

## Instalacja i uruchomienie

Aby uruchomić projekt lokalnie, wykonaj poniższe kroki:

1. Sklonuj repozytorium:
   ```sh
   git clone https://github.com/TwojeRepozytorium.git
   ```
2. Przejdź do katalogu projektu:
   ```sh
   cd nazwa_projektu
   ```
3. Zainstaluj zależności:
   ```sh
   flutter pub get
   ```
4. Uruchom aplikację:
   ```sh
   flutter run
   ```

## Zasoby

Kilka przydatnych materiałów dla początkujących w Flutter:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Flutter Documentation](https://docs.flutter.dev/) - oficjalna dokumentacja Flutter

---

🚀 Projekt stworzony w ramach zajęć z programowania aplikacji mobilnych.
ChatGPT mówi: Teraz README jest bardziej czytelne i zgodne ze standardami GitHub. Możesz go skopiować i wkleić bezpośrednio do swojego repozytorium. Jeśli potrzebujesz dodatkowych sekcji, np. o autorach czy licencji, daj mi znać! 🚀
