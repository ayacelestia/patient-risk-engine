% Klinik Karar Destek Sistemi (CDSS) - Risk Analiz Algoritması v1.0
% Amac: Klinik protokollerin sade ve etkili bir akis semasiyla modellenmesi.

disp('--- Hasta Risk Analiz Sistemine Hos Geldiniz ---');

devam_et = true;

while devam_et
    % 1. Veri Girisi
    yas = input('Hastanin yasi: ');
    tansiyon = input('Sistolik tansiyon degeri (mmHg): ');
    sigara = input('Sigara kullanimi (Evet: 1, Hayir: 0): ');

    score = 0;

    % 2. Puanlama Algoritmasi
    if yas > 50
        score = score + 2;
    elseif yas > 35
        score = score + 1;
    end

    if tansiyon >= 140
        score = score + 3;
    elseif tansiyon >= 120
        score = score + 1;
    end

    if sigara == 1
        score = score + 2;
    end

    % 3. Klinik Karar Ciktisi
    fprintf('\n--> Hesaplanan Toplam Risk Skoru: %d\n', score);

    if score >= 5
        disp('Durum: Kritik Risk Seviyesi');
        disp('Oneri: Acil uzman hekim konsültasyonu onerilir.');
    elseif score >= 2
        disp('Durum: Orta Risk Seviyesi');
        disp('Oneri: Yasam tarzi degisikligi ve rutin kontrol onerilir.');
    else
        disp('Durum: Dusuk Risk Seviyesi');
        disp('Oneri: Saglikli durumun korunmasi tavsiye edilir.');
    end

    % 4. Dongu Kontrolu
    fprintf('\n');
    secim = input('Yeni bir analiz yapilacak mi? (E/C): ', 's');

    if strcmpi(secim, 'C')
        devam_et = false;
        disp('Sistem kapatiliyor. Iyi calismalar!');
    end
    fprintf('\n-----------------------------------\n\n');
end
