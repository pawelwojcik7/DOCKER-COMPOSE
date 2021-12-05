# docker-compose-LAMP-lab


Aplikacja wyświetlająca jednolinijkowy skrypt php: <>php phpinfo(); ?>
Ze względu na użycie linkowania kontener z bazą danych mysql startuje jako pierwszy, dopiero w momencie sygnału o starcie uruchomiony zostaje kontener php.
Jako ostatni zostaje uruchomiony kontener frontendowy na bazie obrazu httpd.

Do połączenia katalogu DocumentRoot przechowujący skrypt z katalogiem wewnetrznym kontenera został zamontowany volumen typu bind.

# Jak uruchomić?

Na zewnątrz wystwiony zostaje port 6666 kontenera frontendowego, po czym następuje przekierowanie do serwera backendowego php-apache.
Aby wyświetlić prosty skrypt zawarty w index.php w katalogu DocumentRoot należy sklonować do katalogu lokalnego repozytorium a następnie w folderze
z projektem uruchomić komende: docker-compose up -d

Przekierowanie zostało ustawione w pliku apache.cnf na samym dole pliku


Wszystkie kontenery zostały podłączone do utworzonej sieci "net2"
Kontener httpd dodatkowo został podłączony do sieci "net1"

