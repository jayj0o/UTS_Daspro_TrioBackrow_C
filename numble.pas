program numble;
uses crt;

label awal;

var
    menu: integer;
    ulang: char;

procedure TebakUser;
var
    angkaRahasia, tebakan, kesempatan, i: integer;
    menang: boolean;
begin
    clrscr;
    writeln('=== MODE 1: Kamu yang menebak ===');
    writeln;
    writeln('Aku akan memilih angka rahasia dari 1 sampai 10.'); writeln;
    writeln('Berapa kali kesempatan yang kamu butuhkan untuk menebaknya?');

    repeat
        write('Masukkan jumlah kesempatan: ');
        readln(kesempatan);
        if kesempatan <= 0 then
            writeln('Kesempatan minimal 1!');
    until kesempatan > 0;
    writeln;

    writeln('Memilih angka...'); writeln('Angka sudah dipilih!'); writeln;
    angkaRahasia := random(10) + 1;
    menang := false;

    writeln('Sekarang, coba tebak!'); writeln;
    for i := 1 to kesempatan do
    begin
        writeln('Percobaan ke-', i, ':');
        readln(tebakan);

        if (tebakan < 1) or (tebakan > 10) then
        begin
            writeln('Angka harus antara 1 sampai 10!');
            continue;
        end;

        if tebakan = angkaRahasia then
        begin
            writeln('Selamat! Kamu menebak angkanya dalam ', i, ' percobaan!'); writeln;
            menang := true;
            break;
        end
        else if tebakan < angkaRahasia then
        begin
            writeln('Terlalu kecil! Coba lagi.');
            writeln;
        end
        else
        begin
            writeln('Terlalu besar! Coba lagi.');
            writeln;
        end;
    end;

    if not menang then
        writeln('YAH, kesempatanmu habis! Angkanya adalah ', angkaRahasia);
end;

procedure TebakKomputer;
var
    n, pilihan: integer;
    bawah, atas, tebakan: integer;
    kapasitas, maksTebakan: integer;
    percobaan: integer;
    ketemu, menyerah: boolean;
begin
    clrscr;
    writeln('=== MODE 2: Komputer yang menebak ===');
    writeln;
    writeln('Aku akan menebak angka rahasiamu!'); writeln;

    repeat
        write('Masukkan batas atas angkamu (minimal 1): ');
        readln(n);
        if n < 1 then
            writeln('Batas atas minimal 1!');
    until n >= 1;
    writeln;

    kapasitas := 1;
    maksTebakan := 0;
    while kapasitas <= n do
    begin
        kapasitas := kapasitas * 2;
        maksTebakan := maksTebakan + 1;
    end;

    writeln('Pikirkan satu angka dari 1 sampai ', n, ', jangan kasih tahu aku ya!');
    writeln('Aku butuh maksimal ', maksTebakan, ' percobaan untuk menebaknya.'); writeln;
    writeln('Beri aku petunjuk setiap kali aku menebak:');
    writeln('1 = Angkamu lebih besar');
    writeln('2 = Angkamu lebih kecil');
    writeln('3 = Tebakanmu benar!');
    writeln('0 = Aku menyerah');
    writeln;

    bawah := 1;
    atas := n;
    percobaan := 0;
    ketemu := false;
    menyerah := false;

    writeln('Baiklah, aku mulai menebak!'); writeln;
    while bawah <= atas do
    begin
        tebakan := (bawah + atas) div 2;

        writeln('Percobaan ke-', percobaan + 1, ':');
        writeln('Rentang sekarang: ', bawah, ' - ', atas);
        writeln('Tebakanku: ', tebakan);
        write('Petunjukmu: ');
        readln(pilihan);

        if (pilihan < 0) or (pilihan > 3) then
        begin
            writeln('Petunjuk harus 0, 1, 2, atau 3!');
            writeln;
            continue;
        end;

        percobaan := percobaan + 1;

        case pilihan of
            1:
                begin
                    bawah := tebakan + 1;
                    writeln('Terlalu kecil! Coba lagi.');
                    writeln;
                end;
            2:
                begin
                    atas := tebakan - 1;
                    writeln('Terlalu besar! Coba lagi.');
                    writeln;
                end;
            3:
                begin
                    ketemu := true;
                    break;
                end;
            0:
                begin
                    menyerah := true;
                    break;
                end;
        end;
    end;

    writeln;
    if ketemu then
    begin
        writeln('Hore! Aku berhasil menebak angkamu dalam ', percobaan, ' percobaan!');
        writeln;
    end
    else if menyerah then
        writeln('Kamu menyerah, ya sudah.')
    else
        writeln('YAH, petunjukmu tidak konsisten, jadi aku tidak bisa menemukan angkanya!');
end;

begin
    randomize;

    awal:
    clrscr;
    writeln('==============================');
    writeln('            NUMBLE');
    writeln('==============================');
    writeln('1. Kamu yang menebak');
    writeln('2. Komputer yang menebak');
    writeln('3. Keluar');
    write('Pilih menu: ');
    readln(menu);

    case menu of
        1, 2:
            begin
                if menu = 1 then
                    TebakUser
                else
                    TebakKomputer;

                writeln;
                write('Mau main lagi? (Y/N): ');
                readln(ulang);
                case ulang of
                    'Y', 'y': goto awal;
                    'N', 'n': writeln('Terima kasih sudah bermain Numble! Sampai jumpa.');
                else
                    writeln('Input tidak valid. Keluar dari permainan.');
                end;
            end;
        3:
            writeln('Terima kasih sudah bermain Numble! Sampai jumpa.');
    else
        begin
            writeln('Menu tidak valid!');
            write('Tekan Enter untuk kembali...');
            readln;
            goto awal;
        end;
    end;
end.