
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("sdfsdfsdf")
    }
}

//TODO: Git
/* Version Control System
 -Linus Torvalds(Git çıkartan)(Linux bulucusu)
 
 Terminal Kullanımı
 -Command + space tuşu ile Terminal.app yazılarak açılır
 -git çalıştırılırsa tüm komutları bilgisilerini verir
 -git yazıldığında açıklama vs çıkmıyorsa terminal bozuktur bunun için git.-scm.com -> Downloads -> Download for Mac -> ordan homebrew tıklanır (brew.sh) açılır. hemen direk karşıda bir komut vardır o kopyalanır terminale yapştırılıp çalıştırılırsa brew yüklemesini yapıcaktır ardındna $brew install git çalıştırılır tamamen hazırdır devam edebilirsiniz
 -clear tüm terminali temizler
 -pwd içinde bulunan klasörü bilgisi verir mesela  /Users/hasanbilgin gelir (print working directory)(klasörü yazdır demek)
 -ls içinde bulunan klasörde görünen dosya ve klasörlerin listeyi verir
 -cd Desktop demek Desktop a gider (change directory)(klasör değiştir demek) Sadece klasörse gider
 -mesela yazarken cd Desk.. taba basarak kelimeyi tamamlatır
 -cd .. bulunan klasörden 1 geri gidilir
 -touch test2.txt denirse olan yerde test2.txt dosya oluşturmuş oluruz
 -mkdir test demek test adında klasör oluşturur . sadece klasörler içindir
 -rm test2.txt demek test2.txt dosyasını tamamen SİLER.dikkatli olmak lazım. Sadece Dosya siler. (remove den gelir).ÇÖPE GİTMEZ.
 -rm -rf test demek test klasörünü SİLER. Sadece klasörler içindir.dikkatli olmak lazım.ÇÖPE GİTMEZ.bide klasörde isen silmez üstüne çık
 -git status demek o anki durumunu verir bize. böyle geldi (fatal: not a git repository (or any of the parent directories): .git) .git klasörü burda yoktur diyor
 -git config --global user.name "Hasan Bilgin" demek çalışılan yerde username Hasan Bilgin diye kayıt yapmaktır
 -git config --global user.name  demek üstteki çalıştırmadan girilirse boş çıkar üst çalıştırıp bu çalıştırılırsa yazdınız user.name çıkar
 -git config --global user.email hasanbilgintr@gmail.com demek aynı şekilde kayıt yapar emaili
 -git config --global user.email demek email bilgisini verir
 
 -GİT İNİT
 -git init demek giti aktif etmek için kullanılır. mesela böle verdi (Initialized empty Git repository in /Users/hasanbilgin/Desktop/Test/.git/) aslında gizli bir klasör oluşturuyor tabiki ls ile göremiyoruz. hatta bundna sonra git status artıkın bişeyler sölemeye başladı
 On branch main   (main branh tasın)
 No commits yet    (commit yok)
 nothing to commit (create/copy files and use "git add" to track)    gibi....
 -ls -la demek gizli olan dosya ve klasörleride gösterir hemde daha detaylı
 -mac te gizi olan dosya ve klasörleri görmek için bir klasörde command + shift + . dır tekrar basılırsa görünmez
 -cd .git demek git klasörüne gider. Buarada .git teki . gizli olduğu belirtir
 Not=  git status çalışmadan .git klasörü burda yoktur bilgisi almadan git init ÇALIŞTIRMAMAK LAZIM. BOZULABİLİR
 
 -COMMİT Projenin istediğin yerinde kayıt alma diyebiliriz
 -git add test1.txt demek text1.txt githuba koymak için bu dosya takip etmek anlamındadır
 -git add . demek o klasörde tüm dosyaları eklemiş(takip etmiş oluruz)
 -git commit -m "text1.txt added" demek komit attım ve text1.txt ekledim anlamındadır çok uzun commit mesajı olmaz ama İNGİLİZCE ve ÖZ ve MESAJ ZORUNLUDUR
 -git log demek commit atan kişinin usernamei,emaili, tarihi , commit nerde durduğu(main), commitin idsi  bilgilerini verir.Bu idler commitler arası gezmede için kullanılcak önemlidir
 -git restore test1.txt demek önceden commit yapılan ardından projede değişiklik yapıldı ama değişiklikleri almamız gerekiyor ondna ondna sonra bunu çalıştırıp geri aldırabiliriz
 -git branch demek güncel olan hangi branch te olduğumuzu verir  * main   gibi..
 -git branch chapter3  demek chapter3 adında branch oluşturmaktır
 -güncel olan branch başka branche geçmek istersek iki yolu var. 1.si git checkout chapter2 demek 2.si git switch chapter2 demek tavsiye edilen 2.sidir çünkü checkout commit değiştirmektede kullanıldığındna kafa karışıklığı yaptığı için
 -git merge chapter2 denirse güncel branch main se chapter2 de ne varsa maine aktarılmış olur
 -fast Forwarding demek eğer mainde oluşturulan branchlerden sonra hiç commit yoksa ve chapter2 ve chapter3 branchlerinde commitleri olup git merge chapter2 yapılırsa buna denir
 -BRANCH(dallanmak) bir projeyi farklı yol üzerinden yürütme yapısı diyebiliriz. yada 2 developer var 1i ana ekran  diğeri listeleme eklernı yapıcak vs..
 
 -MERGE (birleştirmek)- ana branch hangisi ise ona geçmek şart
 
 NOT: merge yapmadna önce yedek almada fayda var
 NOT: terminal merge yaparken texteditör de gösterirse bunu terminale yolunu göstermemiz lazım ondna dolayı ben sublimeText programını göstericez. burdan incelenebilir googleda how to make sublime text defaults git editor  yazarak . hocada
 git config --global core.editor çalıştırınca  /Applications/Sublime\ Text.app/Contents/SharesSupport/bin/Subl --new-window --wait ve bu çalışıyor. bu yapılması lazım mergede mesela hata kalıyor sonradan commit tılması isteniyor main için
 -CONFLİCT (çakışma)  bir tane dosya 2 rafklı branch te erişilmiş ve üstlerinde  farklı değiştirmeler yapılmış hangisini kullanacağımıza karar vermek. conflict çıkmasın diye elinden gelen yapılır istenmez.
 -git checkout COMMİT_ID ile Herhangi bir branch içinde bi önceki commite geri dönme işlemi yani HEAD değişecek ve restore değil dikkat edelim(restore add ile yapılan bir işlemi geri alınabilirliliği)
 
 -geri geldiğimiz committen ileri doğru git switch main yada git switch master yada obranch neise yazılarak gidilebilir(bunada Reattached HEAD denir)
 
 -Detachead Head   içinde bulunduğun en son commiti olmamasıdır
 
 -Not Terminalde kod yazarken çalıştırdığın kodları görmek için yukarı ok tuşuna basılıncs hepsi çıkar
 
 -git reset --hard COMMIT_ID   ile resetlemek(sıfırlamak manasında) sıfırlamak manasında komple siliniyor ordaki commitler
 
 -git revert COMMIT_ID    ile (geri almak manasında) aslında yeni bir commit atıyor ama nerden istiyorsak ordan itibaren atıyor. daha çok kullanılır
 
 -Not git revert Commit_ID hata verebilir verirse commit yapmanı ister yaparsan sorun yok 
 
 -git stash ile commit olmadan kodları bir yerde tutar.
 -git stash list ile listesini verir
 -git stash pop ise geri gelir değişiklikler(git add . lenmemmiş)
 
 -git tag ile o projede olan etiketleri gösterir bunu daha verionlama için kullanırız
 
-git add README.md ile readme dosyası oluşturulur
 
 -git remote add origin https://github.com/hasanbilgintr/MyTestProjectIOS.git ile o adresi origin olarak değişkene atamış oluyoruz origin sabit değil genelde bu kullanılır
 
 -git remote ise origin verir
 
 -git push origin main  ile main i origin adresine yüklemesini sağlıyoruz(lokalden remote)
 
 -git remote remove origin ile olan origini siler
 
 -git clone http://....   ile githubta olan bir proje terminalde ayarlanan yere indirir. ama yazdığınız kodlar lokalde comittler yada stashler çöp olur.
 
 -git pull ile remotede olan projeyi lokale çekmektir (lokalde yazdığınız commite veya stashlere dokunmaz)
 
 -git fetch ile remotede olan projeyi lokale çekmektir (lokalde yazdığınız commite veya stashlere dokunmaz)
 
 -git push ile git fetch karşılaştırırsak git pull otomatik yapar (dosyalarıvsde değiştirir) diğeri ise bir kontrol edeyim. bir değişiklik varmı acaba varsa ne yapılcağına kendim karar vereyim der. hatta şöle diyebiliriz.
 git pull = git git fetch + git merge
 
 -git ignor ise githuba herzaman koymak istemediğimiz, gereksiz, gizli yada parolalar olan dosyalar olabilir(kütüphaneler,depensiler,ios için podlara gerek yok mesela,android için gradleler mesela). otomatik oluşur ama naulede oluşturabiliriz
 
 Not : ios proje si oluştururken isim verip next dediğinizde Create Git repository on my Mac tıklı olursa git init yapılmış olur
 Tavsiye - terminal kullanmak xcode  yada androidmiş önemsiz kılcak terminal aynı olduğu için daha rahat kontrolü var.
 
 */
 
 //MARK: - ÖRNEK 1 (TEST)
/*ÖRNEK 1(TEST Klasörü) projede klasöründe neyse.. ilk önce git status -> errorsa -> git init -> kodlar yazıldı vs.. sonra githuba hangi dosyaları göndermek istedimizi git add test1.txt demek lazım eklemeden önce git status ile zaten bilgi veriyor istediğiniz dosyayı add ile (git status yine bilgi verir) eklenebilir yada eklenmeyebilir mesela ekledik sonra vazgeçtik çıkarmak için git rm --cached test1.text demek çıkarmış oluruz tabi yine git status ile çıkarıldığını bilgisi verir. tabi bazen projede dosya çoksa herbirini tek tek yani git add test2.txt vs yapmaktansa hepsini eklemek(takip etmek) için git add . kullanırız. Ardından commit yapalım yani eklediğimiz dosyaları kayıt yapabildiiğimiz alana yüklemek diuyebiliriz. git commit -m "text1.txt added" ile comit attık sonra git status ile giti kontrol edebiliriz ama commiti git log çok daha detaylı bilgi alabiliriz.sonra text1.txt dosyasında değişiklik yaptık "test1 test1 test1" içine ekledik yazıları. git status çalıştrıdığımızda commit için add yapılmadı diyo. Sonra git add . yaptık yada git add text1.txt de yapılabilirdi sonra git status yapıldığında committe değişiklikler var diyor sonra git commit -m "test1.txt test line added" çalıştırdık sonra git statusta committe değişiklik olmadığını sölüyor git log yaptığımızda en sonra attığımız en üstte ve head->main üstte gelmiştir ilerde görücez bu branch burda demektir. Ardından text1.txt içinde "test2 test2 test2" ekledik git status çalıştırdığımızda yine add yapmamızı veya değişiklikleri geri almamızı ister bilgisini verir. ama diyelim yaptığımız yazı herneyse hatalı yada eksikmiş geri almamız lazım ondna dolayı git restore test1.txt diyebiliriz ardından değişiklikler geri alınır sonra git statusta herhangi bir değişiklik yok der. sonra yeni eklemek gerekseydi şöleki touch text2.txt dedik sonra git ststus çalıştırdığımzıda text2.txt eklendiğini için add yapılması gerektiğini belirtir.Ardından text1.txt yi "test3 test3 test3" ekledik yine git status çalıştırdığımzıda text2.txt eklendiği için add yapılaması gerektiği text1.txt değişiklik için ya add yada restore ile yapılması gerretiğini bilgisini verdi biz direk git add . ile ikisinide add lemiş olduk git status çalıştırdığımızda 2sinide add edildiği(takip edildiği) bilgisi verdi sonra git commit -m "text2.txt added , text1.txt modified" diyerek commit atmış oluruz. sonra git status çalıştırdığımzıda committe değişiklik olmadığını belirtir. git loga bakıldığında ise son commit en baştadır vs...
 */
 
 //MARK: -  ÖRNEK 2 (MyPythonBook)
/*ÖRNEK 2 (MyPythonBook Klasörü) klaösrdeyiz. python kitabı yazıyoruz mesela -> git status çalıştırıyoruz ve git klasörü olmadığını sölüyor git init yapılır -> touch chapter1.txt diye dosya oluşturduk -> chapter1.txt dosyasına romana başladık yazdıkta yazdık -> git status yaptıok chapter1.txt takip edilmediğini söledi -> git add . yaptık -> git statusta takip edildiğini belirtti -> git commit -m "chapter1 completed" yaptık -> git status yaptık commit değişiklik yok dedi -> git logta detaylı gördük -> git branch diyerek güncel branch te olduğumuz görürüz oda * maincyazar- > git branch chapter2 demek chapter2 branch oluşturmuş oluruz ve git branch diyerek
 chapter2
 * main         verir... * ifadesi güncel olan branch in içinde olur. hatta başka chapterde açabiliriz. git branch chapter3 diye açtık. ve git branch çalıştırdığımızda
 chapter2
 chapter3
 * main        verir... chapter2 branch ine geçmek istersek. git switch chapter2 yapıldı. -> touck chapter2.txt yapıldı ve dosya bölüm2 yazılmaya başlandı. git status çalıştırıldığında sadece chapter2.txt eklemek takip etmek zorun olduğunu bilgisini veriyor. git add . diyerek eklendi. git commit -m "chapter2 completed" diyerek commit atıldı. git log yapıldığında
 commit 70cd5d714b67b094a55246741088660174fc9d8e (HEAD -> chapter2)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:42:03 2023 +0300
 chapter2 completed
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e (main, chapter3)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed                verir..  HEAD güncel olan branchi verir oda chapter2 dir. diğer commitin 2 tane branchi oldu gözüküyor main ve chapter3 diye. Hatta chapter2 branchi 1 commit önde gidiyor diyebiliriz. hatta chapter2.txt yazılmaya devam edildi. git status çalıştırıldığında chapter2.txt değişik var diyor güncel branchi ve ya eklenmeli yada restore edilmeli bilgisini  verdi. git add . çalıştırıldı ve git statusta chapter2.txt değişiklik takip edildi . git commit -m "chapter2 revision" yapıldı. git status çalıştırıldığında commit değişikliği yok diyor yani sorun yok. git log çalıştıırldığında ise
 commit 7eba9609e6d6743010d23e993c91b86224e6c454 (HEAD -> chapter2)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:51:03 2023 +0300
 chapter2 revision
 commit 70cd5d714b67b094a55246741088660174fc9d8e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:42:03 2023 +0300
 chapter2 completed
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e (main, chapter3)    //burda  chapter3 te hiç commit yapılmadığını anlayabiliriz teyit etmek lazım
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed       verir en üstte en son commit aradaki chapter2 de yapılan commit ondn aismi yazmaz. -> git branch yapıldı
 * chapter2
 chapter3
 main                 verir... git switch main yapıldı ve chapter2.txt dosyası kayboldu(tamamen silinmedi). çünkü main branch içinde chapter2.txt dosya olmadığı için kayboldu(tamamen silinmedi). main branchteyim hangi dosyalar varsa onlar görünür. git log çalıştırıldığında
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e (HEAD -> main, chapter3)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed                  verir.... sonra git switch chapter2 yaptığımızda chapter2.txt dosyası gelir.git log yapıldığında ise
 commit 7eba9609e6d6743010d23e993c91b86224e6c454 (HEAD -> chapter2)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:51:03 2023 +0300
 chapter2 revision
 commit 70cd5d714b67b094a55246741088660174fc9d8e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:42:03 2023 +0300
 chapter2 completed
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e (main, chapter3)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed               verir. ve loglarda geri geldi.git switch chapter3 yaparak chapter3 e geçtik. git logta ide main branch naılsa aynısı tek farkı chapter3 günceli.touch chapter3.txt ile dosya oluşturduk. ve romanına bu dosya ile devam edildi. git status ta chapter3 yeni dosya oluşturulduğu ve  çözüm olarak add ile takip edilmesi gerekitği bilgisi verildi. git add . ile takip edildi. git status ile takip edildiğini ve artıkın commit atılabilir yada restore ile takibi bırakılabilir bilgisi veirldi. git commit -m "chapter3 completed" ile commit atıldı. chapter3.txt dosyasında romanına devam edildi.git status çalıştırıldığında chapter3.txt değiştirildiği çözüm içinse add yada restore bilgisini verdi.git add  ile takip edildi -> git commit -m "chapter3 revisiyon" ile commit atıldı. git log ile
 commit 16ac7bd81bdc505b21150b3e88f6d8c4732408e9 (HEAD -> chapter3)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 01:08:35 2023 +0300
 chapter3 revision
 commit 062b0bf1fe903aa77610b71db64d39a582f77eb5
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 01:05:05 2023 +0300
 chapter3 completed
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e (main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed            verir...   git switch main geçerek.  chapter3.txt kaybolacak.. tabiki. git log ile
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed             verir..... git switch chapter2 geçerek. chapter2.txt gelcek..   git log ile
 hasanbilgin@hasan-MacBook-Pro-2 MyPythonBook % git log
 commit 7eba9609e6d6743010d23e993c91b86224e6c454 (HEAD -> chapter2)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:51:03 2023 +0300
 chapter2 revision
 commit 70cd5d714b67b094a55246741088660174fc9d8e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:42:03 2023 +0300
 chapter2 completed
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e (main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed             verir.... amacımız şimdi merge yapmak yani branchleri birleştirmek. şimdi main geçiyoruz ana branch ne ise ona geçmek ZORUNDAYIZ. git switch main ile. git merge chapter2 demek chapter2 de ne varsa artık main branch ına geçmiş olcak chapter2.txt de dahil olmuş oldu.Bu arada mainde kendi başına commit yapmadığı için fast Forwarding işlemi oldu diyebiliriz. git branch ile maindeyiz. git log ile
 commit 7eba9609e6d6743010d23e993c91b86224e6c454 (HEAD -> main, chapter2)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:51:03 2023 +0300
 chapter2 revision
 commit 70cd5d714b67b094a55246741088660174fc9d8e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:42:03 2023 +0300
 chapter2 completed
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed         verir.... chapter2 commitleri silinmedi. git branch ile hala maindeyiz. git merge chapter3 yapılırsa eğer ayriytten program çalıştırıp sublimetext gibi, wim gibi
 Merge branch 'chapter3'
 # Please enter a commit message to explain why this merge is necessary,
 # especially if it merges an updated upstream into a topic branch.
 #
 # Lines starting with '#' will be ignored, and an empty message aborts
 # the commit.                 verir....  Merge branch 'chapter3' yerine isim verilir (commit mesajı yani) :wq  enterlenir. Ardından Merge made by the 'ort' strategy. bilgisi verdi bunun nedenide şimsi ilk mergede yani (HEAD -> main, chapter2) dediği için chapter3 chapter2 nin yanına yazılamaz çünkü chapter3te chapter2 yok chapter2 içinde cahpter3 yok olduğu için bizden commit atmamızı istedi daha zorda bıraktırdı ondan sublime yada wim programı açılıp verdi onu. Bende çıkan sublime yada wim herneyse ben direk kapadım kaydetmeden kapatmısın mesajı verdi evet dedim sonra git merge chapter3 dediğimde
 fatal: You have not concluded your merge (MERGE_HEAD exists).
 Please, commit your changes before you merge.                 bilgisi verdi . git status çalıştırdığımda
 On branch main
 All conflicts fixed but you are still merging.
 (use "git commit" to conclude merge)
 Changes to be committed:
 new file:   chapter3.txt           verdi... bende   git commit -m "merge branch chapter3"  diyerek commit attık. sonrasında git lod ta
 commit 9cb9a2c99cd5ffe06ddd8a806607bde1ad1bcff8 (HEAD -> main)
 Merge: 7eba960 16ac7bd
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 02:55:57 2023 +0300
 merge branch chapter3
 commit 16ac7bd81bdc505b21150b3e88f6d8c4732408e9 (chapter3)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 01:08:35 2023 +0300
 chapter3 revision
 commit 062b0bf1fe903aa77610b71db64d39a582f77eb5
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 01:05:05 2023 +0300
 chapter3 completed
 commit 7eba9609e6d6743010d23e993c91b86224e6c454 (chapter2)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:51:03 2023 +0300
 chapter2 revision
 commit 70cd5d714b67b094a55246741088660174fc9d8e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:42:03 2023 +0300
 chapter2 completed
 commit 55e42d8b7843776211fdf56150a00556dc5cda7e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sat Dec 2 23:22:47 2023 +0300
 chapter1 completed                verdi.... Diğer branchler duruyor silinmez geçilebilir
 */

 //MARK: - ÖRNEK 3 (MyProject) (fast Forwarding  olmayan)
 /*Masaüstünde mkdir MyProject ile klasör oluşturduk. cd MyProject ile içine girdik . git status çalıştırdık .git yokmuş dedi. git init çalıştırdık .git klasörünü oluşturduk.touch text1.txt diyerek dosya oluşturduk.git add . yaptık. git commit -m "text1.txt added" diye commit attık. git branch dedik * main  verdi. git branch feature(özellik) diyerek feature branch oluşturduk. git switch feature diyerek o branche geçtik. touch text2.txt diyerek dosya oluşturduk. git add . diye takip ettik. git commit -m "text2.txt added" diye commit attık. text2.txt bişeyler yazdık. git status çalıştırdık text2.txt değiştiğini çözüm olarak git add . yada git restore text2.txt yapılması gerektiğini bildirdi. git add . yazdık. git commit -m "text2.txt revision" diye commitledik. git log dediğimizde
 commit eea8a293663df90a03e269931eb0d8938eb18c53 (HEAD -> feature)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:20:15 2023 +0300
 text2.txt revision
 commit fbbec521b897a8e2820a78bab8f8ec74852db98b
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:17:32 2023 +0300
 text2.txt added
 commit 660b525214f137f4bea8e5b48faf074a983133dc (main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:11:44 2023 +0300
 text1.txt added                    verdi... git switch main dedik. git log dedik
 commit 660b525214f137f4bea8e5b48faf074a983133dc (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:11:44 2023 +0300
 text1.txt added                    verdi... git branch dedik feature altında *main çıktı. git status dediğimizde commit herhangi bir değişiklik olmadığını söledi. buarada şimdi git merge feature yaparak maine birleştirebilir hatta fastworwad olucaktır ama yapmadık. text1.txt içine bişeyler yazdık "main main main". git add . yaptık. git commit -m "text1.txt revision". ardındna text1.txt bişeuyler daha yazdık "test1 test1 test1" diye. yine git add . yaptık. git commit -m "text1.txt another revision" diye commit attık. git log yaptık
 commit 168179941ee981d3da1be935e04159ab15ece30c (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:29:54 2023 +0300
 text1.txt another revision
 commit e2d203f9ff03b235622001e9ac4ecb8df803464f
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:27:55 2023 +0300
 text1.txt revision
 commit 660b525214f137f4bea8e5b48faf074a983133dc
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:11:44 2023 +0300
 text1.txt added                    verdi... text2.txt burda hiç yok. git switch feature yapıp feature branchine geçtik. git log yaptık
 commit eea8a293663df90a03e269931eb0d8938eb18c53 (HEAD -> feature)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:20:15 2023 +0300
 text2.txt revision
 commit fbbec521b897a8e2820a78bab8f8ec74852db98b
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:17:32 2023 +0300
 text2.txt added
 commit 660b525214f137f4bea8e5b48faf074a983133dc
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:11:44 2023 +0300
 text1.txt added                    verdi.... text1.txt bomboştur burda. git switch main ile maine geçtik. git merge feature dedik sublimetext açıldı
 Merge branch 'feature'
 # Please enter a commit message to explain why this merge is necessary,
 # especially if it merges an updated upstream into a topic branch.
 #
 # Lines starting with '#' will be ignored, and an empty message aborts
 # the commit.                         verdi.. ve commit mesajı olarak  Merge branch 'feature' değiştirilebilir ama gayet yeterlidir bırakılabilir. öyleyken kapatıp save yapılır. ama sublimeText açılması için hata olduğu direk kapandı bizde açık olan terminal ise kapatmak zorunda kaldık tekrar açtığımzıda yere geldik sit statusta
 On branch main
 All conflicts fixed but you are still merging.
 (use "git commit" to conclude merge)
 Changes to be committed:
 new file:   text2.txt            verdi.... git commit -m "Merge branch 'feature'" yaptık. git logta ise
 commit 8abb0f55f9e80032632affa9e38b6ceebc1ca075 (HEAD -> main)
 Merge: 1681799 eea8a29
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:49:12 2023 +0300
 Merge branch 'feature'
 commit 168179941ee981d3da1be935e04159ab15ece30c
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:29:54 2023 +0300
 text1.txt another revision
 commit e2d203f9ff03b235622001e9ac4ecb8df803464f
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:27:55 2023 +0300
 text1.txt revision
 commit eea8a293663df90a03e269931eb0d8938eb18c53 (feature)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:20:15 2023 +0300
 text2.txt revision
 commit fbbec521b897a8e2820a78bab8f8ec74852db98b
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:17:32 2023 +0300
 text2.txt added
 commit 660b525214f137f4bea8e5b48faf074a983133dc
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Sun Dec 3 06:11:44 2023 +0300
 text1.txt added
 */
  
 //MARK: -  ÖRNEK 4 merge ederken aynı dosya yazıları karışırsa(MyConflict)
/*Desktopa gelinip -> mkdir  MyConflict klasör oluştuurldu. git status ile yok olduğunu söledi. git init diye .git klasörü oluşturduk.touch text1.txt  diye text1.txt oluşturduk. git status çalıştırdık text1.txt dosya oluştuurlmuş takip edilmesi gerekiryormuş mesajı verildi.git add . sonra git commit -m "text1.txt added" comiti atıldı.git status  ile bir sıkıntı yok. git branch feature ile feature branchi açıldı. git switch feature ile featureye geçtik. touch text2.txt ile dosya oluşturduk. text2.txt içine yazdık vs. git statusta text2.txt takipmesi gerekitğini bilgisini verdi. git add . ardından git commit -m "text2.txt added" commmiti eklendi. text1.txt nin içine "asdasdasd" yazdık vs.. git statusta text1.txt değişikliği için takip edilmesi gerektiğini yazdı. Bizde git add . ve git commit -m "text1.txt revision" commitini attık. git log ise
 commit d80e53099e4ca328ac7594f97513141aa0afade4 (HEAD -> feature)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 01:31:02 2023 +0300
 text1.txt revision
 commit 248dec0f0d97dc35bfb75e439645e7c9fb9bb21f
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 01:27:55 2023 +0300
 text2.txt added
 commit 791fd3a121f40b63f4b6b5fc54f4ad4ffd77c19e (main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 00:55:06 2023 +0300
 text1.txt added                 verdi.... git switch main dedik ve git log ise
 commit 791fd3a121f40b63f4b6b5fc54f4ad4ffd77c19e (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 00:55:06 2023 +0300
 text1.txt added                verdi... text1.txt içine "qweqweqwe" yazdık. git status ile text1.txt değiştirildiğini takip edilmesi gerektiği bilgisini verdi. git add . ve git commit "qweqwe... added to text1.txt". git log ise
 commit e0f449bd15f0e23bfe28a5207eb265fc0024d5f0 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 01:35:24 2023 +0300
 qweqwe... added to text1.txt
 commit 791fd3a121f40b63f4b6b5fc54f4ad4ffd77c19e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 00:55:06 2023 +0300
 text1.txt added                verdi... ve text1.txt iki branchtada kod var ondna dolayısıyla çakışık diyebiliriz. git branch ile maindeyiz. git merge feature ile
 Auto-merging text1.txt
 CONFLICT (content): Merge conflict in text1.txt
 Automatic merge failed; fix conflicts and then commit the result.       verdi... Conflict var diyo. Conflict çöz öle gel diyo. ondan dolyı text1.txt normal açtık
 <<<<<<< HEAD
 qweqweqwe
 =======
 asdasdasd
 >>>>>>> feature                verdi... Burda HEAD yani main kastediyor(git switch main ile) onun altındaki satır mainde , === ile ayırıyor. feature üstündeki kod ise feature deki branchlara ait olduğu anlamını veriyor . ister iki koduda bırakırız hemen böyle
 qweqweqwe
 asdasdasd                       verdi.... ister main bırakıp  feature dekini sileriz
 qweqweqwe                        verdi... ister featuredekini bırakıp maini silebiliriz
 asdasdasd                        verdi... yada tamamiyele farklıda yazılabilir. bazı editörlerde farklı program açıp seçerek ilerleyebilir git merge feature çalıştırdığımızda .... Biz mesela ikiside kalmasını istedikve kaydettik. git status çalıştırdığımzıda
 On branch main
 You have unmerged paths.
 (fix conflicts and run "git commit")
 (use "git merge --abort" to abort the merge)
 Changes to be committed:
 new file:   text2.txt
 Unmerged paths:
 (use "git add <file>..." to mark resolution)
 both modified:   text1.txt           verdi... gelen yazı kendimce sorunu çözdüm . git add . ve git commit -m "conflict fixed" ile commit atılır. git status çalıştırdğımızda bir sıkıntı olmadığını söler. git log ise
 commit 239ede25fc410295cebef04582084930c2d77f5d (HEAD -> main)
 Merge: e0f449b d80e530
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 01:51:49 2023 +0300
 conflict fixed
 commit e0f449bd15f0e23bfe28a5207eb265fc0024d5f0
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 01:35:24 2023 +0300
 qweqwe... added to text1.txt
 commit d80e53099e4ca328ac7594f97513141aa0afade4 (feature)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 01:31:02 2023 +0300
 text1.txt revision
 commit 248dec0f0d97dc35bfb75e439645e7c9fb9bb21f
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 01:27:55 2023 +0300
 text2.txt added
 commit 791fd3a121f40b63f4b6b5fc54f4ad4ffd77c19e
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 00:55:06 2023 +0300
 text1.txt added                  verdi... en son committe farkındaysanız Merge: ..... var demekki conflift için ordanda görebiliriz
 */
  
 //MARK: -  ÖRNEK 5 (Bi önceki commmite geçmek)(MyProjectChangeCommit)
/*Desktop a geldik. mkdir MyProjectChangeCommit ile klasör oluşturduk. cd MyProjectChangeCommit ile klasöre geldik . git status çalıştırdık yok dedi. git init  ile .git oluşturduk.touch text1.txt ile dosya oluştruduk. git add . ve git commit -m "text1.txt added" ile committe atıldı. git log ise
 commit 700e9e559490e55a727af6da7c301a3a03bfdf45 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:51:15 2023 +0300
 text1.txt added                  verdi... text1.txt içine bişeyler yazdık "test1 test1 test1" ... git statusta değişiklik olduğunu söledi . git add . dedik . git commit -m "text1.txt revision 1" commit attık. yine text1.txt içine "text2 text2 text2" yazdık.  git add . dedik. git commit -m "text1.txt revision 2" commit attık. git log ise
 commit b5321a4f4ab87cb7286ae28d9f0e7bdd63a74970 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:56:58 2023 +0300
 text1.txt revision 2
 commit 6e7bcf1210191241a1bf0e562d9a5d2f0dbf0aee
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:54:04 2023 +0300
 text1.txt revision 1
 commit 700e9e559490e55a727af6da7c301a3a03bfdf45
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:51:15 2023 +0300
 text1.txt added               verdi... Biz bir önceki commite dönücez. git checkout 6e7bcf1210191241a1bf0e562d9a5d2f0dbf0aee ile bir önceki commite gittik . tabi HEAD geri geldi test2 test2 test2 silindi. içinde bulunduğun en son commiti olmaması yada diğer bir deyişle HEAD bulunduğu branch in 1 geride olması Detachead Head demektir. çok sürdürüelebilir bir durum değil. burda bu committe yaptıklarını inceleyebilirsin , hatta değişiklikler yapabilirsin ve tekrar commitleyebilirsin yada bu yaptıklarım tammam bi bakıp geri dönebilirisin geri dönebilirsin diyo . şunları yapabiliriz.
 1. tekrar geri gidebiliriz yani git switch main ile (bu duruma Reattached HEAD demektier)
 2.içinde bulunduğumuz güncel commmitten başka branch açıp (git branch feat). o branche geçip (git switch feat). koda devam edip. git add . -> git commit.... lenebilir
 Not maindeki commit kalıcaktır bu işlemle silinmez onunda sildirebiliriz.
 Not bulunduğumuz branchten bi önceki commite geri geldiğimizde orda branch git branch yaptığımızda
 * (HEAD detached at 6e7bcf1)
 main                     verir...herneyse devam edelim. bir önceki commityeyiz. git log ise
 commit 6e7bcf1210191241a1bf0e562d9a5d2f0dbf0aee (HEAD)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:54:04 2023 +0300
 text1.txt revision 1
 commit 700e9e559490e55a727af6da7c301a3a03bfdf45
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:51:15 2023 +0300
 text1.txt added          verir.  git switch main diyerek ilerki commite gidiyoruz. git status bir sorun yok . git log ise
 commit b5321a4f4ab87cb7286ae28d9f0e7bdd63a74970 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:56:58 2023 +0300
 text1.txt revision 2
 commit 6e7bcf1210191241a1bf0e562d9a5d2f0dbf0aee
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:54:04 2023 +0300
 text1.txt revision 1
 commit 700e9e559490e55a727af6da7c301a3a03bfdf45
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:51:15 2023 +0300
 text1.txt added         verir... text2 text2 text2 de geri gelmiştir. git branch ile commit idsini görürüz
 * (HEAD detached at 6e7bcf1)
 main                     verir... git branch feature ile branch oluştururuz. git switch feature ile branch değiştirdik. test1.txt e "test3 test3 test3" yazdık. git add . ve git commit -m "feature branch commit" ile commit attık. git log ise
 commit b150fb97f5617b56f131bb041ba4c45f187e0d78 (HEAD -> feature)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 06:43:32 2023 +0300
 feature branch commit
 commit 6e7bcf1210191241a1bf0e562d9a5d2f0dbf0aee
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:54:04 2023 +0300
 text1.txt revision 1
 commit 700e9e559490e55a727af6da7c301a3a03bfdf45
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:51:15 2023 +0300
 text1.txt added            verir... git branch çalıştırdığımzıda commit idli branch görünmez
 * feature
 main                         verir... git switch main ile maine geçebiliriz tabiki dosyada "test2 test2 test2"  geri gelmiştir "teste3 test3 test3" ler yoktur. git switch feature ile de "test2" ler gider "test3" ler gelir. git switch main ile git log ise
 commit b5321a4f4ab87cb7286ae28d9f0e7bdd63a74970 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:56:58 2023 +0300
 text1.txt revision 2
 commit 6e7bcf1210191241a1bf0e562d9a5d2f0dbf0aee
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:54:04 2023 +0300
 text1.txt revision 1
 commit 700e9e559490e55a727af6da7c301a3a03bfdf45
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Tue Dec 5 05:51:15 2023 +0300
 text1.txt added            verir feature commiti görünmez çünkü o feature branchinde
 */

//MARK: - ÖNNEK 7 (Bi önceki commmit yada commitlere geçip önde olanları silmek)
/*
 Desktopa gelerek mkdir MyProjeResetReverd ile klasör oluşturduk. cd MyProjeResetReverd ile klasöre girilir. git status ile .git olmadığını söledi. git init ile .git klasörü oluşturuldu. touch text1.txt ile dosya oluşturuldu.
 git add . ile takip edildi. git commit -m "text1.txt added" ilede commit atıldı. git log ile
 commit 21f3abe2c3dbcf0eeee474ed5ccdc02e3d5565a5 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:44:28 2023 +0300
     text1.txt added                    verdi... dosyaya (text1.txt e) kodlarımız yazdık "test1 test1 test1". git add . ile takip ettik. git commit -m "txet1 revision 1" ile commit atıldı. dosyaya "test2 test2 test2" kodları eklendi. git add . ile takip edildi. git commit -m "text1 revision 2" ile commit atıldı. dosyaya kodlarımız yazıldı "test3 test3 test3"  diye.  git add . ve git commit -m "test1 revision 3" ile commit atıldı. git log ise
 commit ef6ec50ff07bdc2fd890752c7093abebb0fe9c48 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:56:14 2023 +0300
     text1 revision 3
 commit d2015bc95abac2bf68933a19ebaada2268a0ecc9
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:54:30 2023 +0300
     text1 revision 2
 commit d9bcd7d98c1c4dce04626883979124d3a54d775b
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:49:57 2023 +0300
     text1 revision 1
 commit 21f3abe2c3dbcf0eeee474ed5ccdc02e3d5565a5
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:44:28 2023 +0300
     text1.txt added              verdi... şimdi git reset ile bu commite d9bcd7d98c1c4dce04626883979124d3a54d775b gelmek istiyoruz ilk ikisi kalıcı bir şekilde silincektir ve headde gelicektir. git reset --hard d9bcd7d98c1c4dce04626883979124d3a54d775b ile çalıştırıldı. git log ise
 commit d9bcd7d98c1c4dce04626883979124d3a54d775b (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:49:57 2023 +0300
     text1 revision 1
 commit 21f3abe2c3dbcf0eeee474ed5ccdc02e3d5565a5
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:44:28 2023 +0300
     text1.txt added                verdi... ve sadece dosya içinde "test1 test1 test1" kalmıştır. dosyaya devam ederek "test4 test4 test4" eklendi. git add . ve git commit -m "text1 revision 4" ile commit eklendi. dosyaya "test5 test5 test5" eklendi. git add . ve git commit -m "text1 revision 5" ile commit eklendi. git log ise
 commit 8badabb2c8d5a7bdaa780aeb505d59dd6417ba3c (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 22:10:08 2023 +0300
     text1 revision 5
 commit 693a38528e669439d3c0be7627a7591a19afac6a
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 22:08:13 2023 +0300
     text1 revision 4
 commit d9bcd7d98c1c4dce04626883979124d3a54d775b
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:49:57 2023 +0300
     text1 revision 1
 commit 21f3abe2c3dbcf0eeee474ed5ccdc02e3d5565a5
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:44:28 2023 +0300
     text1.txt added              verdi.... şimdi amacımız 2 commit geri dönüp silmeden aynı branch ile devam etmemizi istiyor ondna dolayı git revert yapıcaz.  git revert d9bcd7d98c1c4dce04626883979124d3a54d775b ile
 Auto-merging text1.txt
 CONFLICT (content): Merge conflict in text1.txt
 error: could not revert d9bcd7d... text1 revision 1
 hint: After resolving the conflicts, mark them with
 hint: "git add/rm <pathspec>", then run
 hint: "git revert --continue".
 hint: You can instead skip this commit with "git revert --skip".
 hint: To abort and get back to the state before "git revert",
 hint: run "git revert --abort".                   verdi.... siz revision 1 dönmek şstiyorsunuz conflictler var diyo ilk önce onları düzeltin diyor dosyada böle
 <<<<<<< HEAD
 Test1 test1 test1
 Test4 test4 test4
 Test5 test5 test5
 =======
 >>>>>>> parent of d9bcd7d (text1 revision 1)      verdi....iptal etmek istersek git revert -abort çalıştırmak gerekir ama biz revert yapçaz dosyayı bu hale getirdik....
 Test1 test1 test1                verdi... git add . çalıştırdık ve git revert --continue dedik başka arayüz açıldı commit ise
 Revert "text1 revision 1"
 This reverts commit d9bcd7d98c1c4dce04626883979124d3a54d775b.      verdi böle kaydedip bıraktık. git logise
 commit 8sadabb2c8d5a7bdaa780aeb505d59dd6fj7ba31 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 22:10:08 2023 +0300
 Revert "text1 revision 1"
 This reverts commit d9bcd7d98c1c4dce04626883979124d3a54d775b.
 commit 8badabb2c8d5a7bdaa780aeb505d59dd6417ba3c
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 22:10:08 2023 +0300
     text1 revision 5
 commit 693a38528e669439d3c0be7627a7591a19afac6a
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 22:08:13 2023 +0300
     text1 revision 4
 commit d9bcd7d98c1c4dce04626883979124d3a54d775b
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:49:57 2023 +0300
     text1 revision 1
 commit 21f3abe2c3dbcf0eeee474ed5ccdc02e3d5565a5
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 11 21:44:28 2023 +0300
     text1.txt added               verdi.....
 


 */

//MARK: - Örnek 8 (git add . yapılıp commitlememe ve kodu zulalama(Stash) / tag (git version etiketleme) )
/*Desktop klasörüne gelip. mkdir MyStash ile klasör oluşturduk. git init yaptık. touch text1.txt ile dosya oluşturduk. kod yazdık "test1 test1 test1" . git add . ve git commit -m "test1.txt added" ile commit atıldı. "test2 test2 test2" dosyaya kod yazıldı. git add . ve git commit -m "test1.txt revision 1" ile commit atıldı ve git log
 commit b162173cd135669d7e1d096665714a22f0602c9d (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Wed Dec 13 13:54:43 2023 +0300
     text1.txt revision 1
 commit da8939299802b0c2515d19b6c6ad1e6e1e20a2cd
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Wed Dec 13 13:52:25 2023 +0300
     test1.txt added              verdi... dosyaya "test3 test3 test3" yazıldı. bu sıradada başka branche geçmem gerekti. tamam geçelim. git branch feature ile feature branchi oluşturduk hatta git git switch feature ile o branche geçtik. tekrar git branch main ile main branchine geçtik. git status ile böle
 On branch main
 Changes not staged for commit:
   (use "git add <file>..." to update what will be committed)
   (use "git restore <file>..." to discard changes in working directory)
     modified:   text1.txt
 no changes added to commit (use "git add" and/or "git commit -a")          verdi... bizden takip edilip ardındna commit atılmamızı istiyor. ama bizde kodu yazdıkta başka branchten devam ediyoruz yada kodu silmek oda işimize gelmiyo belkide bir zaman verdik diyelim bu kodları bir yerde tutabiliriz oda şöle. git add . ile takip ettik. git status ise
 On branch main
 Changes to be committed:
   (use "git restore --staged <file>..." to unstage)
     modified:   text1.txt                              verdi... buda takip edildiğini bilgisini verdi.git switch feature ile feature geçtik. test3ler hala duruyor. git status ise
 On branch feature
 Changes to be committed:
   (use "git restore --staged <file>..." to unstage)
     modified:   text1.txt                              verdi... bu branctede aynısı söledi ve test3 lerde duruyor. git switch main ve git status yaptık. o test3 kodlarımız zulalıcaz oda git stash ile yapılır ve
 Saved working directory and index state WIP on main: b162173 text1.txt revision 1             verdi.... test3 ler gitti(son committen itibaren değişiklikleri) daha doğrusu bi yerde tutuyor ama dosyada yok. git status ise
 On branch main
 nothing to commit, working tree clean                      verdi... diğer branchlerede geçebilirim .apayrı işler apayrı commitlerde atabilirim. git stash list ile o kaydedilenler listesini verir. git stash pop ile kaydedilenler dosyaya yeniden geri gelmiş olur(test3 ler) ama tekrar git add . yapılcak. sonra git tag ile etiket listesini vericektir. git tag 1.0.2 dersek etiket atmış oluruz. git tag ile
 1.0.2                              verdi... git tag 1.0.3 ile etiket atar ve git tag ise
 1.0.2
 1.0.3                              verdi...
*/

//MARK: - Github
/*
 -GİTHUB git sisteminin hem takip hemde paylaşım yapılabilen bir portaldır / github birkaç kişiyi hem takip ethemde proje clonla.
 -star githubta proje beğenme diyebiliriz aynı sosyal medya beğenmesi gibi ve kendi profilimiz your startstan ulşabiliyoruz. takip etmek amaçlı düşünebiliriz
 -watch githubta yapılsn bir commitleri, yenilikleri bildirim almamızı sağlar, mailde atar
 -fork ise githubta en güncel commit ile kendi repomuza(github hesabımıza) yansıtıyor. tabi proje ilerledikçe eski commitlerde kaldığımızı profilimzde bize söler. sync fork ile o commitleride kendi repomuza alabiliriz
 
 -github projesi içinde Actions sekmesi genelde devobsçuların tarafı
 -github projesi içinde Security sekmesi bu projeyi kim kullanır kim kulllanamaz bilgileri. açık vs çıktığında nasıl ulaşılcak onları belirtebiliyoruz
 -github projesi içinde insights sekmesi. projemizin analitikleri -> pulse ->kaç tane aktif pul request var kaçtane kapandı ve kim bunlar
 ->Constributors -> hangi kullanıcı kaç ocmmit atmış bilgileri proje başlangıcından iti baren
 -> diğerlerinide inceleyebiliriz
 
 
 -Token herhangi bir platformdan githuba giriş yapmamızı olanak sağlar
 -Token oluşturma github girişi yapılır. sağ üstten tıklanıp settings tıklanır. sol aşağı doğru developer settings tıklanır.Personel access tokens(kişisel erişim tokınları) seçerek 2 token seçeneği çıkar . Fine-grained tokens proje bazlı token verir. diğeri ise 2.Tokens(classic) tüm projelerinde ulaşabildiğimiz tokenlerdir. classix seçip -> Generate new token tıklarız ve classic seçeriz diğeride seçilebilir. github şifremizi isticektir girilir. Note alanına MacTerminalToken dedik. Expiration ise bu token ne kadar aktif kalacağı kendi bilgisayarın ise No expiration denilebilir. diğer türlü zaman verilebilir. no expiration dedik. select scopes(verilecek izinler) alanında ise repo(inidirilebilir) ve write(değişikliklerinizi yazdırabilirsiniz) yeterli  tabi kendi projenizde tüm izinleri verebilirsiniz. biz yeterlileri aldık. Generate token dedik
 -Constants.macTerminalToken   tokendir .silmeyin kullanıcaz
 
 -bilgisayarda(lokal) olan projeyi GİTHUB a yüklemek için -> proje içinde git init  -> git commit -m "first commit" -> git branch main -> git remote add origin https://github.com/hasanbilgintr/MyTestProjectIOS.git -> git push origin main
 -githubta repositoriy oluşturma. githuba giriş yaptık. your repositoes dedik. oluşturucağım repo adıyla proje nin adı aynı olmasına gerek yok. new diyoruz. owner iznim olduğu hesapları gösterir. name alanına MyTestProjectIOS yazdık. Description alanı açıklama alanıdır girilebilir . public herkez görür, private tek ben görürüm anlamında. add a README file ise proje açıklamasıjnı gösteren dosya eklenebilir olmasıdır. choose a licanse ise public olduğunu düşünelim proje al kullan ama ticari amaçlı kullanamazsın eğitim amaçlı gibi anlamlar katılabilir. create repository diyoruz. repo oluşur. ardından git nasıl oluşturulur commit ,branch remote ve push nasıl atılır bilgilerini verir.
 
 -birden fazla kişi çalışırken herhangi biri katkı yada direk proje içine pushlayabilir onun için push izni vermek gerekir olan repository Setting sekmesinde -> collaborators kısmı-> Manage Access alanında add people diyerek email ile ekleyebiliriz. bu direk projeye pushlar
 
 
 
 -git branch -r ise remote de olan branchleri gösterir
 
 -pull request (pr) ise birleştirme yapılabilir mi bilgisi ve üstte lidere paslama ifadesi olarak düşünülebilir bu sadece githubta vardır
 
 -
 
 */

//MARK: - ÖRNEK 9 (en basit push örneği) MyTestProject
/*
 önceden token alarak. terminal açıp Desktop alanına gelip. mkdir MyTestProject ile klasör oluşturduk. cd MyTestProject ile klasöre alanına girdik. git status ile git yok dedi. git init ile .git oluşturduk. touch test1.txt ile dosya oluşturduk. dosya içinde değişiklik yaptık ("test test test"). git add . ve git commit -m "test1.txt" commiti atıldı. githubta repository açtık. terminale gelip git remote add origin https://github.com/hasanbilgintr/MyTestProjectIOS.git çalıştırdık. git remote ile origin verdi. Ardından git push origin main. github kullanıcı adını ister girersiniz hasanbilgintr ve password ise token olan bunu girdik Constants.macTerminalToken  githuba atmışızdır. dosyaya "test2 test2 test2" yazıp . git add . ve git commit -m "test1.txt revision" ile commit attık.git push origin main ile pushladık(yükledik githuba)
 */

//MARK: -ÖRNEK 10 (ortak çalışılan bir proje (settings-> Collaborators -> add poeople ile))(eklenen arkadaş)
/*
 Terminal açılarak Desktoppa biz geldik istenilen yere gelinebilir.github a giriş yapılır (o eklenen arkadaş için sölüyorum) o reporsitory seçilir.<>Code kısmına tıklanır HTTPS seçili olup o link kopyalanır. Terminale gelinip git clone https://github.com/hasanbilgintr/MyTestProjectIOS.git ile o proje repository adı ne ise klasör şeklinde iner. dosyaya kodlarını yazdık "test3 test3 test3". git status ile dosyada değişiklik yapıldığını ya add yada restore edilmesini ister vs.. yönetici dediki direk maine yükleme başka branch açıp oraya yükle bi bakam inceleyem vs dedi. git log ise
 commit ddff7f8f1ed0f166ecc80d303a70ae64abcae975 (HEAD -> main, origin/main, origin/HEAD)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 17:17:41 2023 +0300
     test1.txt revision
 commit e83f85050d1ace7bb4ebc7517e4feed144a88fcd
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 16:49:50 2023 +0300
     first commit                         verdi... git branch ile  sadece *main verdi(lokal bu)... git branch -r ise
 origin/HEAD -> origin/main
 origin/main                               verdi... bu ise remote olan branchlerdir oda main sadece var. git branch develop ile develop branchi açtık ve git switch develop ile o branche geçtik. git add . ve git commit -m ""test revision 3" ile commit attık. git push origin develop ile çalıştırınca izni varsa (setting vs eklenmişse) bunu push edebilcek. githubtan yönetici giriş yapınca o repository içinde o develop branchini push edildiya ozaman Compare &  pull requestte(karşılaştır ve ) çıkar. solda üstlere doğru olan branclerin develop branchine gelip kodlarını inceleyebilir  sorun yoksa Compare & pull request tıklayıp karşılaştırma bilgisini görüp zaten direk able to merge (merge lenebilir demek) These branches can be automatically merged (otomatik olarak mergelenebilir) zaten mergelenmeyecek olsa yani conflict olsa burda onun bilgisini verirdi.burdada conflict çıksa otomatik olrak çözme gibi birşeyi yok. main defult branchtir zaten base der diğeri yani develop kodları maine katılcaktır. write kısmına benim pull requestimi onayla(please approve my pr) ardındna Create pull request tıkladık bu şekilde pr açmış ve commit atmış olduk. tabi bu üst lidere gidince respositoryden seçip pull requests sekmesinde çıkıcaktır tıklayıp içine giricektir kim açtığı write yazdığı bilgi, dosyayı(eklediği kodlarıyani) ,isterse commit(commit sekmesinden ya commit adına yada sğaında kod basarak) detaylarına bakabilcek, branchlere bakabilcek ardıdan 2seçeneği var 1. write alanına kardeş olmamış sen bidaha yap yazıp Close pull request tıklayabilr. 2.Merge pull request diyip birleştirmek için sonra çıkan alanda commit bilgisini değiştirip yada direk kalabilirde Confirm merge tıklayabilir bu şekilde birleştirip commit atmış olur ve maine otomatik olarak alınır. bu pr açıp burda birleştirmek zorunda değil ilk önce reposirtory clonluyoruz yada git pull ile bilgisayara indiriyoruz git alanında branchler arası değişiklikleri vs inceliyormuş kendim mergeliyorum kendim merge halini push ediyorum ddi hoca.
 */

//MARK: - ÖRNEK 11 (git pull & git fetch) (MyTestProjectIOS klasörü)
/*
 Proje dizinine gelip. git branch ile branchlere baktık develop ve main var. git switch main ile maine geçtik. biz main tarafını çekicez ondan maine geçtik. bide tabiki remote commitlerinden öndemiyiz geridemiyiz yani ben çektikten yada cloneladıktan sonra commit atıldığımı bunu bilmemmiz lazım. git fetch ile birşeyler yaptı. git status yaptık
 Proje dizinine gelip. git branch ile branchlere baktık develop ve main var. git switch main ile maine geçtik. biz main tarafını çekicez ondan maine geçtik. bide tabiki remote commitlerinden öndemiyiz geridemiyiz yani ben çektikten yada cloneladıktan sonra commit atıldığımı bunu bilmemmiz lazım. git fetch ile birşeyler yaptı. git status ile
 On branch main
 Your branch is behind 'origin/main' by 2 commits, and can be fast-forwarded.
   (use "git pull" to update your local branch)
 nothing to commit, working tree clean           verdi.... sen maindesin diyor ve senin mainin orjin/main den 2 commit geride diyor ve istersen fast-forwarded edilebiliyor(yani merge etmekten bahsediyor fast-forwarded demesdi) . yapılırsa değişiklikler lokalde olan projeye yansıcak.neden ilerde çıktı çünkü 2 commit githubta attık hem pr açarken bide pr kabul ederken. en sondada git pull çalıştırın lokal branchinizi update yapmak için. git log ise
 commit ddff7f8f1ed0f166ecc80d303a70ae64abcae975 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 17:17:41 2023 +0300
     test1.txt revision
 commit e83f85050d1ace7bb4ebc7517e4feed144a88fcd
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 16:49:50 2023 +0300
     first commit                        verdi....git pull ile fast-forwarded edildi git log ise
 commit a309f6d2e7b57524a8c17432f456ecf65de51c3f (HEAD -> main, origin/main, origin/HEAD)
 Merge: ddff7f8 d095080
 Author: Hasan Bilgin <49581443+hasanbilgintr@users.noreply.github.com>
 Date:   Fri Dec 15 18:29:33 2023 +0300
     Merge pull request #1 from hasanbilgintr/develop
     test revision 3,
 commit d095080bde06d6fda389fbfdf3025d4b1d64e2a3 (origin/develop, develop)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Fri Dec 15 17:53:26 2023 +0300
     test revision 3,
 commit ddff7f8f1ed0f166ecc80d303a70ae64abcae975
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 17:17:41 2023 +0300
     test1.txt revision
 commit e83f85050d1ace7bb4ebc7517e4feed144a88fcd
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 16:49:50 2023 +0300
     first commit                                  verdi..... HEAD -> main, origin/main, origin/HEAD demesiyle hem lokal hemde remotede aynıyız diyebiliriz ve (origin/develop, develop) ilede farksız olduğunu görüyoruz
 */

//MARK: - ÖRNEK 12 (git ignore) (MyTestProjectIOS klasörü)
/*
 klaösre geldik.touch secret.txt ile dosya oluşturduk.git status ile secret dosyasının direk takip edilmesi gerektiğini sölüyor ama bizim amacımız görünmemesi ondan dolayısıyla touch .gitignore ile gizli dosya oluşturduk. macte shift + command + . ile gizli dosyalar görünür.ls -la ile tüm gizli dosyala ve klasörlerde listesini vericektir. gitignore dosyasını açıp secret.txt yazıp kaydedip kapadık. git status çalıştırınca sadece gitignore dosyasını görücektir secret.txt görmücektir. git add . ve git commit -m "git ignore added" ile commit atmış oluruz. git log ise
 commit 4d71d01e4cf00fdb445fc2a8d6a885b36bbc78a9 (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 18 17:14:13 2023 +0300
     git ignore added
 commit a309f6d2e7b57524a8c17432f456ecf65de51c3f (origin/main, origin/HEAD)
 Merge: ddff7f8 d095080
 Author: Hasan Bilgin <49581443+hasanbilgintr@users.noreply.github.com>
 Date:   Fri Dec 15 18:29:33 2023 +0300
     Merge pull request #1 from hasanbilgintr/develop
     test revision 3,
 commit d095080bde06d6fda389fbfdf3025d4b1d64e2a3 (origin/develop, develop)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Fri Dec 15 17:53:26 2023 +0300
     test revision 3,
 commit ddff7f8f1ed0f166ecc80d303a70ae64abcae975
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 17:17:41 2023 +0300
     test1.txt revision
 commit e83f85050d1ace7bb4ebc7517e4feed144a88fcd
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Thu Dec 14 16:49:50 2023 +0300
     first commit                            verdi...git push origin main dersekte githubada atmış oluruz. .gitignore dosyasında secret.txt görünecektir bilincektirki gizli,önemli ,gereksiz yada önemsiz olduğunu.
 */

//MARK: - ÖRNEK 13 (Projeyi Xcode den githuba yükleme) 231203_MyTestProjeGithub-MyTestProjeGithub klasör yeri
/*
proje açıldı git ile işaretli yazıldı derlendi vs.1.commit yazdılıd bilgisi verdik vs... githuba koymak için terminalden klasöre geldiğimizde. git status dendiğinde git init olduğunu gördük.tabi terminalden git add . ve git commit -m "dfgfdg" ile commit atılabilir xcode içinden ise (git add . ve git commit -m "dsfsf" işlemleri için) projeye gelip en üstten Source Control(Integrate) tıklanıp Commit... tıklanır değişken olan dosyalar direk zaten gelir Commit message (required) alanına commit yazılır ve Commit butonuna basılrak hem takip edilip hem commit atılmış olur.
proje açıldı git ile işaretli yazıldı derlendi vs.1.commit yazdılıd bilgisi verdik vs... githuba koymak için terminalden klasöre geldiğimizde. git status dendiğinde git init olduğunu gördük.tabi terminalden git add . ve git commit -m "dfgfdg" ile commit atılabilir xcode içinden ise (git add . ve git commit -m "dsfsf" işlemleri için) projeye gelip en üstten Source Control(Integrate) tıklanıp Commit... tıklanır değişken olan dosyalar direk zaten gelir Commit message (required) alanına commit yazılır ve Commit butonuna basılrak hem takip edilip hem commit atılmış olur. git statusta sorun yok. git log  ise
 commit 8d95663e76e78a85fc1dd884ac1a94d12adc657b (HEAD -> main)
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 18 17:56:04 2023 +0300
     for loop added
 commit 6105d62503c8d5ebdc6cf1cc6c0e699c46fa0fb7
 Author: Hasan Bilgin <hasanbilgintr@gmail.com>
 Date:   Mon Dec 18 17:37:39 2023 +0300
     Initial Commit
 hasanbilgin@hasan-MacBook-Pro-2 MyTestProjeGithub % git status
 On branch main
 nothing to commit, working tree clean                 verdi.... bu arada ilk başta giti seçtiğimiz için direk kendi commitinide atmış oldu. xcode de sol üstte ana klasörlerin hemen yanında tıklanırsa Repository kısmında Branches var branchler yer alır. istediğimniz taksirde Branches sağ tıklayıp New branch from "main" tıklanırsa ve başka branch mesela develop girdik ve create tıklanırsa hem git branch develop ve git switch develop kodlarını çalıştırmış olur. terminalden git branch ile kontrol edilebilir. xcodeden maine sağ tıklayıp Switch... tıklanırsa yine maine geçimş oluruz. git statusla yine kontrol edebiliriz.tabi . Remotes kısmıda burda sağ tıklayıp add Exiisting Remote... tıklanırsa origin neye tanımlayım dicektir ondna doalyı githuba giriş yapıp repositoriy açalım. git adresini aldık https://github.com/hasanbilgintr/MyTestProjectGithubIOS.git gibi  Xcodedeki Location kısmıan yapıştırıup Add dedik bu git remote add origin https://github.com/hasanbilgintr/MyTestProjectGithubIOS.git buna tekabül edicektir. sonra üst çubuktan integrate-> Push... tıklanırsa origin/main çıkıcaktır biraz önce ekledikya direk push dersek githuba atıcaktır. tabi github kullanıcı adı ve token ister oda anlatıldı. sonrasında pushlucaktır.yine commit atalık kod yazdık aynı dosyaya "test test..."intagrateden commit....tıkladık commit girdik hatta commit ve psuh ta yanında kullanılabilir
 */

// Not = githubta README.md açılmadan main brancinden direk push edilebilir hatta mainden atılırsa dili otomatik bulur



//sublimtxt sorunlu hala çalışmıyor
//github birkaç kişiyi hem takip ethemde proje clonla
//tüm projelerinide koy buraya
//codersclub.co ile githubla kayıt ol baya güzel sıralama vs yapabilirsiniz










