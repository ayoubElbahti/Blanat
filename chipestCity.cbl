           IDENTIFICATION DIVISION.
           PROGRAM-ID. BLANAT.
           ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
      *    ------------------- INPUT FILE -----------------

               SELECT DATAFILE ASSIGN TO
               "C:\Users\ayoub\Desktop\input.txt"
                   ORGANIZATION IS LINE SEQUENTIAL.
      *    ------------------- SORT FILE -----------------
               SELECT WORKFILE ASSIGN TO
               "C:\Users\ayoub\Desktop\input.sort"
               .

           DATA DIVISION.
           FILE SECTION.
      *    ------------------- INPUT FILE DESCRIPTION -----------------
           FD DATAFILE.
           01 DATARECORD.
               05 DR-CITY PIC X(18).
               05 DR-PRODUCT PIC X(18).
               05 DR-PRICE   PIC 9(6)V9(2)  .
      *    ------------------- SORT FILE DESCRIPTION -----------------
           SD WORKFILE
           DATA RECORD WORK-REC
           RECORDING MODE F.
           01 WORK-REC.
                05 WORK-RECPRODUCT-KEY PIC X(18).
                05 WORK-RECPRODUCT-PRODUIT PIC X(18).
                05 WORK-RECPRODUCT-PRICE   PIC 9(6)V9(2) .

           WORKING-STORAGE SECTION.
      *    ------------------- PRODUCT TABLE -----------------
           01 WS-TABLE-PRODUIT.
              05 WS-RECORD-PRODUCT OCCURS 94 TIMES
              INDEXED BY PRDT-INDEX.
                 10 WS-PRODUIT-PRICE PIC 9(6)V9(2).
                 10 WS-NAME-PRODUIT PIC X(18).
      *    ------------------- CITY TABLE -----------------
           01 WS-TABLE.
              05 WS-RECORD OCCURS 101 TIMES
                    INDEXED BY WS-INDEX.
                 10 WS-CITY-PRICE PIC 9(6)V9(2).
                 10 WS-NAME PIC X(18).
      *    ------------- INITIALIZED PRODUCT RECORD  -----------------
           01 WS-PRODUCT-REC.
              05 PRDTE-0 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-0 PIC X(18) VALUES 'Bell_Pepper'.
              05 PRDTE-1 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-1 PIC X(18) VALUES 'Plum'.
              05 PRDTE-2 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-2 PIC X(18) VALUES 'Sweet_Potato'.
              05 PRDTE-3 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-3 PIC X(18) VALUES 'Potato'.
              05 PRDTE-4 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-4 PIC X(18) VALUES 'Brussels_Sprouts'.
              05 PRDTE-5 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-5 PIC X(18) VALUES 'Clementine'.
              05 PRDTE-6 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-6 PIC X(18) VALUES 'Watermelon'.
              05 PRDTE-7 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-7 PIC X(18) VALUES 'Banana'.
              05 PRDTE-8 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-8 PIC X(18) VALUES 'Pear'.
              05 PRDTE-9 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-9 PIC X(18) VALUES 'Broccoli'.
              05 PRDTE-10 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-10 PIC X(18) VALUES 'Onion'.
              05 PRDTE-11 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-11 PIC X(18) VALUES 'Collard_Greens'.
              05 PRDTE-12 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-12 PIC X(18) VALUES 'Yam'.
              05 PRDTE-13 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-13 PIC X(18) VALUES 'Pomegranate'.
              05 PRDTE-14 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-14 PIC X(18) VALUES 'Blackberry'.
              05 PRDTE-15 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-15 PIC X(18) VALUES 'Cauliflower'.
              05 PRDTE-16 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-16 PIC X(18) VALUES 'Squash_Blossom'.
              05 PRDTE-17 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-17 PIC X(18) VALUES 'Artichoke'.
              05 PRDTE-18 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-18 PIC X(18) VALUES 'Coconut'.
              05 PRDTE-19 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-19 PIC X(18) VALUES 'Passion_Fruit'.
              05 PRDTE-20 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-20 PIC X(18) VALUES 'Lime'.
              05 PRDTE-21 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-21 PIC X(18) VALUES 'Green_Beans'.
              05 PRDTE-22 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-22 PIC X(18) VALUES 'Celery'.
              05 PRDTE-23 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-23 PIC X(18) VALUES 'Cherry'.
              05 PRDTE-24 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-24 PIC X(18) VALUES 'Honeydew'.
              05 PRDTE-25 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-25 PIC X(18) VALUES 'Goji_Berry'.
              05 PRDTE-26 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-26 PIC X(18) VALUES 'Parsnip'.
              05 PRDTE-27 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-27 PIC X(18) VALUES 'Watercress'.
              05 PRDTE-28 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-28 PIC X(18) VALUES 'Jicama'.
              05 PRDTE-29 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-29 PIC X(18) VALUES 'Plantain'.
              05 PRDTE-30 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-30 PIC X(18) VALUES 'Guava'.
              05 PRDTE-31 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-31 PIC X(18) VALUES 'Nectarine'.
              05 PRDTE-32 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-32 PIC X(18) VALUES 'Ginger'.
              05 PRDTE-33 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-33 PIC X(18) VALUES 'Bok_Choy'.
              05 PRDTE-34 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-34 PIC X(18) VALUES 'Rutabaga'.
              05 PRDTE-35 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-35 PIC X(18) VALUES 'Parsley'.
              05 PRDTE-36 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-36 PIC X(18) VALUES 'Endive'.
              05 PRDTE-37 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-37 PIC X(18) VALUES 'Pumpkin'.
              05 PRDTE-38 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-38 PIC X(18) VALUES 'Blueberry'.
              05 PRDTE-39 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-39 PIC X(18) VALUES 'Mango'.
              05 PRDTE-40 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-40 PIC X(18) VALUES 'Kale'.
              05 PRDTE-41 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-41 PIC X(18) VALUES 'Kohlrabi'.
              05 PRDTE-42 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-42 PIC X(18) VALUES 'Radish'.
              05 PRDTE-43 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-43 PIC X(18) VALUES 'Acorn_Squash'.
              05 PRDTE-44 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-44 PIC X(18) VALUES 'Orange'.
              05 PRDTE-45 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-45 PIC X(18) VALUES 'Cabbage'.
              05 PRDTE-46 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-46 PIC X(18) VALUES 'Rosemary'.
              05 PRDTE-47 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-47 PIC X(18) VALUES 'Tomato'.
              05 PRDTE-48 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-48 PIC X(18) VALUES 'Basil'.
              05 PRDTE-49 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-49 PIC X(18) VALUES 'Peas'.
              05 PRDTE-50 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-50 PIC X(18) VALUES 'Date'.
              05 PRDTE-51 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-51 PIC X(18) VALUES 'Apricot'.
              05 PRDTE-52 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-52 PIC X(18) VALUES 'Currant'.
              05 PRDTE-53 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-53 PIC X(18) VALUES 'Lemon'.
              05 PRDTE-54 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-54 PIC X(18) VALUES 'Starfruit'.
              05 PRDTE-55 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-55 PIC X(18) VALUES 'Butternut_Squash'.
              05 PRDTE-56 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-56 PIC X(18) VALUES 'Cactus_Pear'.
              05 PRDTE-57 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-57 PIC X(18) VALUES 'Salsify'.
              05 PRDTE-58 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-58 PIC X(18) VALUES 'Apple'.
              05 PRDTE-59 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-59 PIC X(18) VALUES 'Dragon_Fruit'.
              05 PRDTE-60 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-60 PIC X(18) VALUES 'Avocado'.
              05 PRDTE-61 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-61 PIC X(18) VALUES 'Jackfruit'.
              05 PRDTE-62 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-62 PIC X(18) VALUES 'Chard'.
              05 PRDTE-63 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-63 PIC X(18) VALUES 'Pineapple'.
              05 PRDTE-64 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-64 PIC X(18) VALUES 'Asparagus'.
              05 PRDTE-65 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-65 PIC X(18) VALUES 'Spinach'.
              05 PRDTE-66 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-66 PIC X(18) VALUES 'Fig'.
              05 PRDTE-67 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-67 PIC X(18) VALUES 'Zucchini'.
              05 PRDTE-68 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-68 PIC X(18) VALUES 'Eggplant'.
              05 PRDTE-69 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-69 PIC X(18) VALUES 'Cucumber'.
              05 PRDTE-70 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-70 PIC X(18) VALUES 'Oregano'.
              05 PRDTE-71 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-71 PIC X(18) VALUES 'Lettuce'.
              05 PRDTE-72 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-72 PIC X(18) VALUES 'Okra'.
              05 PRDTE-73 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-73 PIC X(18) VALUES 'Strawberry'.
              05 PRDTE-74 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-74 PIC X(18) VALUES 'Carrot'.
              05 PRDTE-75 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-75 PIC X(18) VALUES 'Papaya'.
              05 PRDTE-76 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-76 PIC X(18) VALUES 'Cantaloupe'.
              05 PRDTE-77 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-77 PIC X(18) VALUES 'Grapefruit'.
              05 PRDTE-78 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-78 PIC X(18) VALUES 'Kiwano'.
              05 PRDTE-79 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-79 PIC X(18) VALUES 'Cilantro'.
              05 PRDTE-80 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-80 PIC X(18) VALUES 'Kiwi'.
              05 PRDTE-81 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-81 PIC X(18) VALUES 'Beet'.
              05 PRDTE-82 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-82 PIC X(18) VALUES 'Persimmon'.
              05 PRDTE-83 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-83 PIC X(18) VALUES 'Grapes'.
              05 PRDTE-84 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-84 PIC X(18) VALUES 'Rhubarb'.
              05 PRDTE-85 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-85 PIC X(18) VALUES 'Peach'.
              05 PRDTE-86 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-86 PIC X(18) VALUES 'Garlic'.
              05 PRDTE-87 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-87 PIC X(18) VALUES 'Dill'.
              05 PRDTE-88 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-88 PIC X(18) VALUES 'Sage'.
              05 PRDTE-89 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-89 PIC X(18) VALUES 'Raspberry'.
              05 PRDTE-90 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-90 PIC X(18) VALUES 'Thyme'.
              05 PRDTE-91 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-91 PIC X(18) VALUES 'Turnip'.
              05 PRDTE-92 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-92 PIC X(18) VALUES 'Cranberry'.
              05 PRDTE-93 PIC 9(6)V9(2) VALUES 00.
              05 PRDTF-93 PIC X(18) VALUES 'Mint'.
      *    ------------- INITIALIZED CITY RECORD  -----------------
           01 WS-REC.
              05 TE-0 PIC 9(6)V9(2) VALUES 00.
              05 FF-0 PIC X(18) VALUES 'Tichla'.
              05 TE-1 PIC 9(6)V9(2) VALUES 00.
              05 FF-1 PIC X(18) VALUES 'Ouarzazate'.
              05 TE-2 PIC 9(6)V9(2) VALUES 00.
              05 FF-2 PIC X(18) VALUES 'Zagora'.
              05 TE-3 PIC 9(6)V9(2) VALUES 00.
              05 FF-3 PIC X(18) VALUES 'Beni_Mellal'.
              05 TE-4 PIC 9(6)V9(2) VALUES 00.
              05 FF-4 PIC X(18) VALUES 'Ksar_es_Seghir'.
              05 TE-5 PIC 9(6)V9(2) VALUES 00.
              05 FF-5 PIC X(18) VALUES 'Assa'.
              05 TE-6 PIC 9(6)V9(2) VALUES 00.
              05 FF-6 PIC X(18) VALUES 'Ben_guerir'.
              05 TE-7 PIC 9(6)V9(2) VALUES 00.
              05 FF-7 PIC X(18) VALUES 'Sidi_Ifni'.
              05 TE-8 PIC 9(6)V9(2) VALUES 00.
              05 FF-8 PIC X(18) VALUES 'Rabat'.
              05 TE-9 PIC 9(6)V9(2) VALUES 00.
              05 FF-9 PIC X(18) VALUES 'Taourirt'.
              05 TE-10 PIC 9(6)V9(2) VALUES 00.
              05 FF-10 PIC X(18) VALUES 'Tichka'.
              05 TE-11 PIC 9(6)V9(2) VALUES 00.
              05 FF-11 PIC X(18) VALUES 'Midelt'.
              05 TE-12 PIC 9(6)V9(2) VALUES 00.
              05 FF-12 PIC X(18) VALUES 'Jorf_El_Melha'.
              05 TE-13 PIC 9(6)V9(2) VALUES 00.
              05 FF-13 PIC X(18) VALUES 'Youssoufia'.
              05 TE-14 PIC 9(6)V9(2) VALUES 00.
              05 FF-14 PIC X(18) VALUES 'Bni_Hadifa'.
              05 TE-15 PIC 9(6)V9(2) VALUES 00.
              05 FF-15 PIC X(18) VALUES 'Ifrane'.
              05 TE-16 PIC 9(6)V9(2) VALUES 00.
              05 FF-16 PIC X(18) VALUES 'Aourir'.
              05 TE-17 PIC 9(6)V9(2) VALUES 00.
              05 FF-17 PIC X(18) VALUES 'Sidi_Slimane'.
              05 TE-18 PIC 9(6)V9(2) VALUES 00.
              05 FF-18 PIC X(18) VALUES 'Ouazzane'.
              05 TE-19 PIC 9(6)V9(2) VALUES 00.
              05 FF-19 PIC X(18) VALUES 'Tangier'.
              05 TE-20 PIC 9(6)V9(2) VALUES 00.
              05 FF-20 PIC X(18) VALUES 'Tinghir'.
              05 TE-21 PIC 9(6)V9(2) VALUES 00.
              05 FF-21 PIC X(18) VALUES 'Khemisset'.
              05 TE-22 PIC 9(6)V9(2) VALUES 00.
              05 FF-22 PIC X(18) VALUES 'Zemamra'.
              05 TE-23 PIC 9(6)V9(2) VALUES 00.
              05 FF-23 PIC X(18) VALUES 'Taza'.
              05 TE-24 PIC 9(6)V9(2) VALUES 00.
              05 FF-24 PIC X(18) VALUES 'Khenifra'.
              05 TE-25 PIC 9(6)V9(2) VALUES 00.
              05 FF-25 PIC X(18) VALUES 'Sidi_Bennour'.
              05 TE-26 PIC 9(6)V9(2) VALUES 00.
              05 FF-26 PIC X(18) VALUES 'Asilah'.
              05 TE-27 PIC 9(6)V9(2) VALUES 00.
              05 FF-27 PIC X(18) VALUES 'Tiznit'.
              05 TE-28 PIC 9(6)V9(2) VALUES 00.
              05 FF-28 PIC X(18) VALUES 'Béni_Mellal'.
              05 TE-29 PIC 9(6)V9(2) VALUES 00.
              05 FF-29 PIC X(18) VALUES 'Demnate'.
              05 TE-30 PIC 9(6)V9(2) VALUES 00.
              05 FF-30 PIC X(18) VALUES 'Agadir'.
              05 TE-31 PIC 9(6)V9(2) VALUES 00.
              05 FF-31 PIC X(18) VALUES 'Nador'.
              05 TE-32 PIC 9(6)V9(2) VALUES 00.
              05 FF-32 PIC X(18) VALUES 'Fquih_Ben_Salah'.
              05 TE-33 PIC 9(6)V9(2) VALUES 00.
              05 FF-33 PIC X(18) VALUES 'Mohammedia'.
              05 TE-34 PIC 9(6)V9(2) VALUES 00.
              05 FF-34 PIC X(18) VALUES 'Guelmim'.
              05 TE-35 PIC 9(6)V9(2) VALUES 00.
              05 FF-35 PIC X(18) VALUES 'Jerada'.
              05 TE-36 PIC 9(6)V9(2) VALUES 00.
              05 FF-36 PIC X(18) VALUES 'Dakhla'.
              05 TE-37 PIC 9(6)V9(2) VALUES 00.
              05 FF-37 PIC X(18) VALUES 'Oulad_Teima'.
              05 TE-38 PIC 9(6)V9(2) VALUES 00.
              05 FF-38 PIC X(18) VALUES 'Ahfir'.
              05 TE-39 PIC 9(6)V9(2) VALUES 00.
              05 FF-39 PIC X(18) VALUES 'Bir_Anzerane'.
              05 TE-40 PIC 9(6)V9(2) VALUES 00.
              05 FF-40 PIC X(18) VALUES 'Guelta_Zemmur'.
              05 TE-41 PIC 9(6)V9(2) VALUES 00.
              05 FF-41 PIC X(18) VALUES 'Drarga'.
              05 TE-42 PIC 9(6)V9(2) VALUES 00.
              05 FF-42 PIC X(18) VALUES 'Guercif'.
              05 TE-43 PIC 9(6)V9(2) VALUES 00.
              05 FF-43 PIC X(18) VALUES 'Bir_Lehlou'.
              05 TE-44 PIC 9(6)V9(2) VALUES 00.
              05 FF-44 PIC X(18) VALUES 'Errachidia'.
              05 TE-45 PIC 9(6)V9(2) VALUES 00.
              05 FF-45 PIC X(18) VALUES 'Casablanca'.
              05 TE-46 PIC 9(6)V9(2) VALUES 00.
              05 FF-46 PIC X(18) VALUES 'Marrakech'.
              05 TE-47 PIC 9(6)V9(2) VALUES 00.
              05 FF-47 PIC X(18) VALUES 'Larache'.
              05 TE-48 PIC 9(6)V9(2) VALUES 00.
              05 FF-48 PIC X(18) VALUES 'Oujda'.
              05 TE-49 PIC 9(6)V9(2) VALUES 00.
              05 FF-49 PIC X(18) VALUES 'had_soualem'.
              05 TE-50 PIC 9(6)V9(2) VALUES 00.
              05 FF-50 PIC X(18) VALUES 'Sidi_Kacem'.
              05 TE-51 PIC 9(6)V9(2) VALUES 00.
              05 FF-51 PIC X(18) VALUES 'Akhfenir'.
              05 TE-52 PIC 9(6)V9(2) VALUES 00.
              05 FF-52 PIC X(18) VALUES 'Figuig'.
              05 TE-53 PIC 9(6)V9(2) VALUES 00.
              05 FF-53 PIC X(18) VALUES 'El_Jadida'.
              05 TE-54 PIC 9(6)V9(2) VALUES 00.
              05 FF-54 PIC X(18) VALUES 'Safi'.
              05 TE-55 PIC 9(6)V9(2) VALUES 00.
              05 FF-55 PIC X(18) VALUES 'Azilal'.
              05 TE-56 PIC 9(6)V9(2) VALUES 00.
              05 FF-56 PIC X(18) VALUES 'Berkane'.
              05 TE-57 PIC 9(6)V9(2) VALUES 00.
              05 FF-57 PIC X(18) VALUES 'Meknes'.
              05 TE-58 PIC 9(6)V9(2) VALUES 00.
              05 FF-58 PIC X(18) VALUES 'Berrechid'.
              05 TE-59 PIC 9(6)V9(2) VALUES 00.
              05 FF-59 PIC X(18) VALUES 'Sidi_Bouzid'.
              05 TE-60 PIC 9(6)V9(2) VALUES 00.
              05 FF-60 PIC X(18) VALUES 'Inezgane'.
              05 TE-61 PIC 9(6)V9(2) VALUES 00.
              05 FF-61 PIC X(18) VALUES 'Azrou'.
              05 TE-62 PIC 9(6)V9(2) VALUES 00.
              05 FF-62 PIC X(18) VALUES 'Smara'.
              05 TE-63 PIC 9(6)V9(2) VALUES 00.
              05 FF-63 PIC X(18) VALUES 'Souk_Larbaa'.
              05 TE-64 PIC 9(6)V9(2) VALUES 00.
              05 FF-64 PIC X(18) VALUES 'Midar'.
              05 TE-65 PIC 9(6)V9(2) VALUES 00.
              05 FF-65 PIC X(18) VALUES 'Chichaoua'.
              05 TE-66 PIC 9(6)V9(2) VALUES 00.
              05 FF-66 PIC X(18) VALUES 'Saidia'.
              05 TE-67 PIC 9(6)V9(2) VALUES 00.
              05 FF-67 PIC X(18) VALUES 'Ksar_El_Kebir'.
              05 TE-68 PIC 9(6)V9(2) VALUES 00.
              05 FF-68 PIC X(18) VALUES 'Essaouira'.
              05 TE-69 PIC 9(6)V9(2) VALUES 00.
              05 FF-69 PIC X(18) VALUES 'Tarfaya'.
              05 TE-70 PIC 9(6)V9(2) VALUES 00.
              05 FF-70 PIC X(18) VALUES 'Boujdour'.
              05 TE-71 PIC 9(6)V9(2) VALUES 00.
              05 FF-71 PIC X(18) VALUES 'Layoune'.
              05 TE-72 PIC 9(6)V9(2) VALUES 00.
              05 FF-72 PIC X(18) VALUES 'Goulmima'.
              05 TE-73 PIC 9(6)V9(2) VALUES 00.
              05 FF-73 PIC X(18) VALUES 'Tiflet'.
              05 TE-74 PIC 9(6)V9(2) VALUES 00.
              05 FF-74 PIC X(18) VALUES 'Chefchaouen'.
              05 TE-75 PIC 9(6)V9(2) VALUES 00.
              05 FF-75 PIC X(18) VALUES 'Kalaat_MGouna'.
              05 TE-76 PIC 9(6)V9(2) VALUES 00.
              05 FF-76 PIC X(18) VALUES 'Bab_Berred'.
              05 TE-77 PIC 9(6)V9(2) VALUES 00.
              05 FF-77 PIC X(18) VALUES 'Tafraout'.
              05 TE-78 PIC 9(6)V9(2) VALUES 00.
              05 FF-78 PIC X(18) VALUES 'Arfoud'.
              05 TE-79 PIC 9(6)V9(2) VALUES 00.
              05 FF-79 PIC X(18) VALUES 'Fes'.
              05 TE-80 PIC 9(6)V9(2) VALUES 00.
              05 FF-80 PIC X(18) VALUES 'Boulemane'.
              05 TE-81 PIC 9(6)V9(2) VALUES 00.
              05 FF-81 PIC X(18) VALUES 'Laâyoune'.
              05 TE-82 PIC 9(6)V9(2) VALUES 00.
              05 FF-82 PIC X(18) VALUES 'Moulay_Bousselham'.
              05 TE-83 PIC 9(6)V9(2) VALUES 00.
              05 FF-83 PIC X(18) VALUES 'Tetouan'.
              05 TE-84 PIC 9(6)V9(2) VALUES 00.
              05 FF-84 PIC X(18) VALUES 'Sefrou'.
              05 TE-85 PIC 9(6)V9(2) VALUES 00.
              05 FF-85 PIC X(18) VALUES 'Bab_Taza'.
              05 TE-86 PIC 9(6)V9(2) VALUES 00.
              05 FF-86 PIC X(18) VALUES 'Ait_Melloul'.
              05 TE-87 PIC 9(6)V9(2) VALUES 00.
              05 FF-87 PIC X(18) VALUES 'Taroudant'.
              05 TE-88 PIC 9(6)V9(2) VALUES 00.
              05 FF-88 PIC X(18) VALUES 'Khouribga'.
              05 TE-89 PIC 9(6)V9(2) VALUES 00.
              05 FF-89 PIC X(18) VALUES 'Tan-Tan'.
              05 TE-90 PIC 9(6)V9(2) VALUES 00.
              05 FF-90 PIC X(18) VALUES 'Guerguerat'.
              05 TE-91 PIC 9(6)V9(2) VALUES 00.
              05 FF-91 PIC X(18) VALUES 'Settat'.
              05 TE-92 PIC 9(6)V9(2) VALUES 00.
              05 FF-92 PIC X(18) VALUES 'Kenitra'.
              05 TE-93 PIC 9(6)V9(2) VALUES 00.
              05 FF-93 PIC X(18) VALUES 'Bouarfa'.
              05 TE-94 PIC 9(6)V9(2) VALUES 00.
              05 FF-94 PIC X(18) VALUES 'Laayoune'.
              05 TE-95 PIC 9(6)V9(2) VALUES 00.
              05 FF-95 PIC X(18) VALUES 'Oujda_Angad'.
              05 TE-96 PIC 9(6)V9(2) VALUES 00.
              05 FF-96 PIC X(18) VALUES 'Skhirate'.
              05 TE-97 PIC 9(6)V9(2) VALUES 00.
              05 FF-97 PIC X(18) VALUES 'Sale'.
              05 TE-98 PIC 9(6)V9(2) VALUES 00.
              05 FF-98 PIC X(18) VALUES 'Al_Hoceima'.
              05 TE-99 PIC 9(6)V9(2) VALUES 00.
              05 FF-99 PIC X(18) VALUES 'Temara'.
              05 TE-100 PIC 9(6)V9(2) VALUES 00.
              05 FF-100 PIC X(18) VALUES 'Imzouren'.
      *    ------------------- TEMP VARIABLES -----------------
           01 WS-CURRENT-DATE-DATA.
                 05  WS-CURRENT-DATE.
                     10  WS-CURRENT-YEAR           PIC 9(04).
                     10  WS-CURRENT-MONTH          PIC 9(02).
                     10  WS-CURRENT-DAY            PIC 9(02).
                 05  WS-CURRENT-TIME.
                     10  WS-CURRENT-HOURS          PIC 9(02).
                     10  WS-CURRENT-MINUTE         PIC 9(02).
                     10  WS-CURRENT-SECOND         PIC 9(02).
                     10  WS-CURRENT-MILLISECONDS   PIC 9(02).
           01 WS-START     PIC 9(8).
           01 WS-FIN       PIC 9(8).
           01 WS-CITY      PIC X(18).
           01 WS-PRODUCT   PIC X(18).
           01 WS-PRICE     PIC 9(6)V9(2).
           01 WS-EOF       PIC X VALUE "N".

           PROCEDURE DIVISION.
           MAIN.
             MOVE FUNCTION CURRENT-DATE to WS-CURRENT-DATE-DATA
             MOVE WS-CURRENT-TIME TO WS-START
             DISPLAY "START : "WS-START
              SORT WORKFILE
                ON ASCENDING KEY WORK-RECPRODUCT-KEY
                   USING DATAFILE
                   OUTPUT PROCEDURE IS BFF
           .
           SORT-TABLE.
      *    ------------------- INITIALIZED CITY INDEX -----------------
                SET WS-INDEX TO 1
                 SORT WS-RECORD ON
                 ASCENDING KEY WS-CITY-PRICE
               DISPLAY WS-NAME(WS-INDEX) " : "WS-CITY-PRICE(WS-INDEX)

      *    ------------------- INITIALIZED PRODUCT INDEX -----------------
                SET PRDT-INDEX TO 1
                 SORT WS-RECORD-PRODUCT ON
                 ASCENDING KEY WS-PRODUIT-PRICE
                 ASCENDING KEY WS-NAME-PRODUIT

                 PERFORM VARYING PRDT-INDEX FROM 1 BY 1
                 UNTIL PRDT-INDEX > 5

                DISPLAY WS-NAME-PRODUIT(PRDT-INDEX)
                    " : "   WS-PRODUIT-PRICE(PRDT-INDEX)

                 END-PERFORM
      *    ------------------- DISPLAY -----------------
                   MOVE FUNCTION CURRENT-DATE to WS-CURRENT-DATE-DATA
             MOVE WS-CURRENT-TIME TO WS-FIN
                DISPLAY "FIN : "WS-FIN
             SUBTRACT WS-START FROM WS-FIN

             DISPLAY "DUREE : " WS-FIN




              STOP RUN.

           BFF.
                MOVE WS-REC TO WS-TABLE
                MOVE WS-PRODUCT-REC TO WS-TABLE-PRODUIT
                RETURN WORKFILE
                   AT END  MOVE "Y" TO WS-EOF
                END-RETURN
                PERFORM  UNTIL WS-EOF  =  'Y'

                  UNSTRING WORK-REC DELIMITED BY ","
                   INTO WS-CITY, WS-PRODUCT, WS-PRICE


              SEARCH  WS-RECORD
                AT END DISPLAY 'INVALID CITY'
                WHEN WS-NAME(WS-INDEX) = WS-CITY
                ADD  WS-PRICE  TO WS-CITY-PRICE(WS-INDEX)

              END-SEARCH

              SEARCH  WS-RECORD-PRODUCT
                AT END DISPLAY 'INVALID PRODUCT'
                WHEN WS-NAME-PRODUIT(PRDT-INDEX) = WS-PRODUCT
                IF WS-PRICE < WS-PRODUIT-PRICE(PRDT-INDEX)
                    OR
                    WS-PRODUIT-PRICE(PRDT-INDEX)=0
                    MOVE  WS-PRICE  TO WS-PRODUIT-PRICE(PRDT-INDEX)
                    END-IF
              END-SEARCH

              SET WS-INDEX TO 01
              SET PRDT-INDEX TO 01

                  RETURN WORKFILE

                  AT END   MOVE "Y" TO WS-EOF

                  END-RETURN

                  END-PERFORM
                  PERFORM SORT-TABLE
           .
