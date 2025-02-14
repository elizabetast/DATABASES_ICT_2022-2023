PGDMP     5    %                {            HOTEL    14.7    14.7 ^    c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            e           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            f           1262    16394    HOTEL    DATABASE     R   CREATE DATABASE "HOTEL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "HOTEL";
                postgres    false            g           0    0    DATABASE "HOTEL"    COMMENT     5   COMMENT ON DATABASE "HOTEL" IS 'LAB1_HOTEL_BD_4SEM';
                   postgres    false    3686            h           0    0    DATABASE "HOTEL"    ACL     �   REVOKE ALL ON DATABASE "HOTEL" FROM postgres;
GRANT CREATE,CONNECT ON DATABASE "HOTEL" TO postgres;
GRANT TEMPORARY ON DATABASE "HOTEL" TO postgres WITH GRANT OPTION;
                   postgres    false    3686                        2615    16395    schema_hotel    SCHEMA        CREATE SCHEMA schema_hotel;
    DROP SCHEMA schema_hotel;
                postgres    false            i           0    0    SCHEMA schema_hotel    ACL     q   REVOKE ALL ON SCHEMA schema_hotel FROM postgres;
GRANT ALL ON SCHEMA schema_hotel TO postgres WITH GRANT OPTION;
                   postgres    false    6            �            1259    16443    cleaning    TABLE     �   CREATE TABLE schema_hotel.cleaning (
    id_cleaning integer NOT NULL,
    date_clean date NOT NULL,
    status_clean text NOT NULL,
    id_employee integer NOT NULL,
    id_room integer NOT NULL
);
 "   DROP TABLE schema_hotel.cleaning;
       schema_hotel         heap    postgres    false    6            j           0    0    TABLE cleaning    ACL     �   REVOKE ALL ON TABLE schema_hotel.cleaning FROM postgres;
GRANT ALL ON TABLE schema_hotel.cleaning TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    220            �            1259    16442    Cleaning_id_cleaning_seq    SEQUENCE     �   ALTER TABLE schema_hotel.cleaning ALTER COLUMN id_cleaning ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Cleaning_id_cleaning_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    220    6            �            1259    16398    client    TABLE     �   CREATE TABLE schema_hotel.client (
    id_client integer NOT NULL,
    address character varying(50) NOT NULL,
    passport_datas character varying(50) NOT NULL,
    full_name text NOT NULL,
    email character varying(50) NOT NULL
);
     DROP TABLE schema_hotel.client;
       schema_hotel         heap    postgres    false    6            k           0    0    TABLE client    ACL     }   REVOKE ALL ON TABLE schema_hotel.client FROM postgres;
GRANT ALL ON TABLE schema_hotel.client TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    211            �            1259    16397    Client_id_client_seq    SEQUENCE     �   ALTER TABLE schema_hotel.client ALTER COLUMN id_client ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Client_id_client_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    6    211            �            1259    16406    employee    TABLE     �   CREATE TABLE schema_hotel.employee (
    personal_number integer NOT NULL,
    full_name text NOT NULL,
    hotel smallint NOT NULL,
    "position" character varying(25) NOT NULL
);
 "   DROP TABLE schema_hotel.employee;
       schema_hotel         heap    postgres    false    6            l           0    0    TABLE employee    ACL     �   REVOKE ALL ON TABLE schema_hotel.employee FROM postgres;
GRANT ALL ON TABLE schema_hotel.employee TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    213            �            1259    16405    Employee_personal_number_seq    SEQUENCE     �   ALTER TABLE schema_hotel.employee ALTER COLUMN personal_number ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Employee_personal_number_seq"
    START WITH 3000
    INCREMENT BY 1
    MINVALUE 3000
    MAXVALUE 9000
    CACHE 1
);
            schema_hotel          postgres    false    6    213            �            1259    16414    hotel    TABLE     �   CREATE TABLE schema_hotel.hotel (
    id_hotel integer NOT NULL,
    city text NOT NULL,
    name text NOT NULL,
    street character varying(30) NOT NULL,
    count_rooms integer NOT NULL,
    num_of_building smallint NOT NULL
);
    DROP TABLE schema_hotel.hotel;
       schema_hotel         heap    postgres    false    6            m           0    0    TABLE hotel    ACL     {   REVOKE ALL ON TABLE schema_hotel.hotel FROM postgres;
GRANT ALL ON TABLE schema_hotel.hotel TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    215            �            1259    16413    Hotel_id_hotel_seq    SEQUENCE     �   ALTER TABLE schema_hotel.hotel ALTER COLUMN id_hotel ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Hotel_id_hotel_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    6    215            �            1259    16461    order    TABLE     >  CREATE TABLE schema_hotel."order" (
    id_order integer NOT NULL,
    client integer NOT NULL,
    employee integer NOT NULL,
    room integer NOT NULL,
    arrival_date date NOT NULL,
    departure_date date NOT NULL,
    payment_type text NOT NULL,
    status_order text NOT NULL,
    booking_date date NOT NULL
);
 !   DROP TABLE schema_hotel."order";
       schema_hotel         heap    postgres    false    6            n           0    0    TABLE "order"    ACL        REVOKE ALL ON TABLE schema_hotel."order" FROM postgres;
GRANT ALL ON TABLE schema_hotel."order" TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    222            �            1259    16460    Order_id_order_seq    SEQUENCE     �   ALTER TABLE schema_hotel."order" ALTER COLUMN id_order ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Order_id_order_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    6    222            �            1259    16503    price    TABLE     �   CREATE TABLE schema_hotel.price (
    id_price integer NOT NULL,
    room_type integer NOT NULL,
    date_begin date NOT NULL,
    date_end date NOT NULL,
    sum money NOT NULL
);
    DROP TABLE schema_hotel.price;
       schema_hotel         heap    postgres    false    6            o           0    0    TABLE price    ACL     {   REVOKE ALL ON TABLE schema_hotel.price FROM postgres;
GRANT ALL ON TABLE schema_hotel.price TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    228            �            1259    16502    Price_id_price_seq    SEQUENCE     �   ALTER TABLE schema_hotel.price ALTER COLUMN id_price ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Price_id_price_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    6    228            �            1259    16432    room    TABLE     �   CREATE TABLE schema_hotel.room (
    id_room integer NOT NULL,
    num integer NOT NULL,
    hotel integer NOT NULL,
    type integer NOT NULL
);
    DROP TABLE schema_hotel.room;
       schema_hotel         heap    postgres    false    6            p           0    0 
   TABLE room    ACL     y   REVOKE ALL ON TABLE schema_hotel.room FROM postgres;
GRANT ALL ON TABLE schema_hotel.room TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    218            �            1259    16431    Room_id_room_seq    SEQUENCE     �   ALTER TABLE schema_hotel.room ALTER COLUMN id_room ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Room_id_room_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    218    6            �            1259    16492    sale    TABLE     �   CREATE TABLE schema_hotel.sale (
    id_sale integer NOT NULL,
    room_type integer NOT NULL,
    date_begin date NOT NULL,
    date_end date NOT NULL,
    sale_size numeric NOT NULL
);
    DROP TABLE schema_hotel.sale;
       schema_hotel         heap    postgres    false    6            q           0    0 
   TABLE sale    ACL     y   REVOKE ALL ON TABLE schema_hotel.sale FROM postgres;
GRANT ALL ON TABLE schema_hotel.sale TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    226            �            1259    16491    Sale_id_sale_seq    SEQUENCE     �   ALTER TABLE schema_hotel.sale ALTER COLUMN id_sale ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Sale_id_sale_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    226    6            �            1259    16484 	   type_room    TABLE     �   CREATE TABLE schema_hotel.type_room (
    id_type integer NOT NULL,
    description text NOT NULL,
    amenities text NOT NULL,
    name_type character varying(50) NOT NULL
);
 #   DROP TABLE schema_hotel.type_room;
       schema_hotel         heap    postgres    false    6            r           0    0    TABLE type_room    ACL     �   REVOKE ALL ON TABLE schema_hotel.type_room FROM postgres;
GRANT ALL ON TABLE schema_hotel.type_room TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    224            �            1259    16483    Type_room_id_type_seq    SEQUENCE     �   ALTER TABLE schema_hotel.type_room ALTER COLUMN id_type ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel."Type_room_id_type_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    224    6            �            1259    16421    discount    TABLE     �   CREATE TABLE schema_hotel.discount (
    id_discount integer NOT NULL,
    id_hotel integer NOT NULL,
    amount numeric NOT NULL,
    date_begin date NOT NULL,
    date_end date NOT NULL
);
 "   DROP TABLE schema_hotel.discount;
       schema_hotel         heap    postgres    false    6            s           0    0    TABLE discount    ACL     �   REVOKE ALL ON TABLE schema_hotel.discount FROM postgres;
GRANT ALL ON TABLE schema_hotel.discount TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    216            �            1259    16538    discount_id_discount_seq    SEQUENCE     �   ALTER TABLE schema_hotel.discount ALTER COLUMN id_discount ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME schema_hotel.discount_id_discount_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            schema_hotel          postgres    false    216    6            W          0    16443    cleaning 
   TABLE DATA           e   COPY schema_hotel.cleaning (id_cleaning, date_clean, status_clean, id_employee, id_room) FROM stdin;
    schema_hotel          postgres    false    220   �t       N          0    16398    client 
   TABLE DATA           \   COPY schema_hotel.client (id_client, address, passport_datas, full_name, email) FROM stdin;
    schema_hotel          postgres    false    211   u       S          0    16421    discount 
   TABLE DATA           ]   COPY schema_hotel.discount (id_discount, id_hotel, amount, date_begin, date_end) FROM stdin;
    schema_hotel          postgres    false    216   �u       P          0    16406    employee 
   TABLE DATA           W   COPY schema_hotel.employee (personal_number, full_name, hotel, "position") FROM stdin;
    schema_hotel          postgres    false    213   v       R          0    16414    hotel 
   TABLE DATA           a   COPY schema_hotel.hotel (id_hotel, city, name, street, count_rooms, num_of_building) FROM stdin;
    schema_hotel          postgres    false    215   �v       Y          0    16461    order 
   TABLE DATA           �   COPY schema_hotel."order" (id_order, client, employee, room, arrival_date, departure_date, payment_type, status_order, booking_date) FROM stdin;
    schema_hotel          postgres    false    222   ]w       _          0    16503    price 
   TABLE DATA           U   COPY schema_hotel.price (id_price, room_type, date_begin, date_end, sum) FROM stdin;
    schema_hotel          postgres    false    228   �w       U          0    16432    room 
   TABLE DATA           ?   COPY schema_hotel.room (id_room, num, hotel, type) FROM stdin;
    schema_hotel          postgres    false    218   x       ]          0    16492    sale 
   TABLE DATA           Y   COPY schema_hotel.sale (id_sale, room_type, date_begin, date_end, sale_size) FROM stdin;
    schema_hotel          postgres    false    226   gx       [          0    16484 	   type_room 
   TABLE DATA           U   COPY schema_hotel.type_room (id_type, description, amenities, name_type) FROM stdin;
    schema_hotel          postgres    false    224   �x       t           0    0    Cleaning_id_cleaning_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('schema_hotel."Cleaning_id_cleaning_seq"', 13, true);
          schema_hotel          postgres    false    219            u           0    0    Client_id_client_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('schema_hotel."Client_id_client_seq"', 4, true);
          schema_hotel          postgres    false    210            v           0    0    Employee_personal_number_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('schema_hotel."Employee_personal_number_seq"', 3006, true);
          schema_hotel          postgres    false    212            w           0    0    Hotel_id_hotel_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('schema_hotel."Hotel_id_hotel_seq"', 3, true);
          schema_hotel          postgres    false    214            x           0    0    Order_id_order_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('schema_hotel."Order_id_order_seq"', 4, true);
          schema_hotel          postgres    false    221            y           0    0    Price_id_price_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('schema_hotel."Price_id_price_seq"', 2, true);
          schema_hotel          postgres    false    227            z           0    0    Room_id_room_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('schema_hotel."Room_id_room_seq"', 12, true);
          schema_hotel          postgres    false    217            {           0    0    Sale_id_sale_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('schema_hotel."Sale_id_sale_seq"', 1, true);
          schema_hotel          postgres    false    225            |           0    0    Type_room_id_type_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('schema_hotel."Type_room_id_type_seq"', 2, true);
          schema_hotel          postgres    false    223            }           0    0    discount_id_discount_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('schema_hotel.discount_id_discount_seq', 3, true);
          schema_hotel          postgres    false    229            �           2606    16449    cleaning Cleaning_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY schema_hotel.cleaning
    ADD CONSTRAINT "Cleaning_pkey" PRIMARY KEY (id_cleaning);
 H   ALTER TABLE ONLY schema_hotel.cleaning DROP CONSTRAINT "Cleaning_pkey";
       schema_hotel            postgres    false    220            �           2606    16404    client Client_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY schema_hotel.client
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY (id_client);
 D   ALTER TABLE ONLY schema_hotel.client DROP CONSTRAINT "Client_pkey";
       schema_hotel            postgres    false    211            �           2606    16425    discount Discount_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY schema_hotel.discount
    ADD CONSTRAINT "Discount_pkey" PRIMARY KEY (id_discount);
 H   ALTER TABLE ONLY schema_hotel.discount DROP CONSTRAINT "Discount_pkey";
       schema_hotel            postgres    false    216            �           2606    16412    employee Employee_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY schema_hotel.employee
    ADD CONSTRAINT "Employee_pkey" PRIMARY KEY (personal_number);
 H   ALTER TABLE ONLY schema_hotel.employee DROP CONSTRAINT "Employee_pkey";
       schema_hotel            postgres    false    213            �           2606    16420    hotel Hotel_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY schema_hotel.hotel
    ADD CONSTRAINT "Hotel_pkey" PRIMARY KEY (id_hotel);
 B   ALTER TABLE ONLY schema_hotel.hotel DROP CONSTRAINT "Hotel_pkey";
       schema_hotel            postgres    false    215            �           2606    16467    order Order_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY schema_hotel."order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id_order);
 D   ALTER TABLE ONLY schema_hotel."order" DROP CONSTRAINT "Order_pkey";
       schema_hotel            postgres    false    222            �           2606    16507    price Price_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY schema_hotel.price
    ADD CONSTRAINT "Price_pkey" PRIMARY KEY (id_price);
 B   ALTER TABLE ONLY schema_hotel.price DROP CONSTRAINT "Price_pkey";
       schema_hotel            postgres    false    228            �           2606    16436    room Room_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY schema_hotel.room
    ADD CONSTRAINT "Room_pkey" PRIMARY KEY (id_room);
 @   ALTER TABLE ONLY schema_hotel.room DROP CONSTRAINT "Room_pkey";
       schema_hotel            postgres    false    218            �           2606    16496    sale Sale_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY schema_hotel.sale
    ADD CONSTRAINT "Sale_pkey" PRIMARY KEY (id_sale);
 @   ALTER TABLE ONLY schema_hotel.sale DROP CONSTRAINT "Sale_pkey";
       schema_hotel            postgres    false    226            �           2606    16490    type_room Type_room_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY schema_hotel.type_room
    ADD CONSTRAINT "Type_room_pkey" PRIMARY KEY (id_type);
 J   ALTER TABLE ONLY schema_hotel.type_room DROP CONSTRAINT "Type_room_pkey";
       schema_hotel            postgres    false    224            �           2606    16529    order chk_arrivaldate    CHECK CONSTRAINT     w   ALTER TABLE schema_hotel."order"
    ADD CONSTRAINT chk_arrivaldate CHECK ((arrival_date < departure_date)) NOT VALID;
 B   ALTER TABLE schema_hotel."order" DROP CONSTRAINT chk_arrivaldate;
       schema_hotel          postgres    false    222    222    222    222            �           2606    16531    order chk_bookingdate    CHECK CONSTRAINT     v   ALTER TABLE schema_hotel."order"
    ADD CONSTRAINT chk_bookingdate CHECK ((booking_date <= arrival_date)) NOT VALID;
 B   ALTER TABLE schema_hotel."order" DROP CONSTRAINT chk_bookingdate;
       schema_hotel          postgres    false    222    222    222    222            �           2606    16533    price chk_datebegin    CHECK CONSTRAINT     k   ALTER TABLE schema_hotel.price
    ADD CONSTRAINT chk_datebegin CHECK ((date_begin < date_end)) NOT VALID;
 >   ALTER TABLE schema_hotel.price DROP CONSTRAINT chk_datebegin;
       schema_hotel          postgres    false    228    228    228    228            �           2606    16535    sale chk_datebegin    CHECK CONSTRAINT     j   ALTER TABLE schema_hotel.sale
    ADD CONSTRAINT chk_datebegin CHECK ((date_begin < date_end)) NOT VALID;
 =   ALTER TABLE schema_hotel.sale DROP CONSTRAINT chk_datebegin;
       schema_hotel          postgres    false    226    226    226    226            �           2606    16534    price chk_dateend    CHECK CONSTRAINT     i   ALTER TABLE schema_hotel.price
    ADD CONSTRAINT chk_dateend CHECK ((date_end > date_begin)) NOT VALID;
 <   ALTER TABLE schema_hotel.price DROP CONSTRAINT chk_dateend;
       schema_hotel          postgres    false    228    228    228    228            �           2606    16536    sale chk_dateend    CHECK CONSTRAINT     h   ALTER TABLE schema_hotel.sale
    ADD CONSTRAINT chk_dateend CHECK ((date_end > date_begin)) NOT VALID;
 ;   ALTER TABLE schema_hotel.sale DROP CONSTRAINT chk_dateend;
       schema_hotel          postgres    false    226    226    226    226            �           2606    16530    order chk_departuredate    CHECK CONSTRAINT     y   ALTER TABLE schema_hotel."order"
    ADD CONSTRAINT chk_departuredate CHECK ((departure_date > arrival_date)) NOT VALID;
 D   ALTER TABLE schema_hotel."order" DROP CONSTRAINT chk_departuredate;
       schema_hotel          postgres    false    222    222    222    222            �           2606    16526    discount chk_discount_datebegin    CHECK CONSTRAINT     w   ALTER TABLE schema_hotel.discount
    ADD CONSTRAINT chk_discount_datebegin CHECK ((date_begin < date_end)) NOT VALID;
 J   ALTER TABLE schema_hotel.discount DROP CONSTRAINT chk_discount_datebegin;
       schema_hotel          postgres    false    216    216    216    216            �           2606    16527    discount chk_discount_dateend    CHECK CONSTRAINT     u   ALTER TABLE schema_hotel.discount
    ADD CONSTRAINT chk_discount_dateend CHECK ((date_end > date_begin)) NOT VALID;
 H   ALTER TABLE schema_hotel.discount DROP CONSTRAINT chk_discount_dateend;
       schema_hotel          postgres    false    216    216    216    216            �           2606    16528    hotel chk_hotel_countrooms    CHECK CONSTRAINT     l   ALTER TABLE schema_hotel.hotel
    ADD CONSTRAINT chk_hotel_countrooms CHECK ((count_rooms > 0)) NOT VALID;
 E   ALTER TABLE schema_hotel.hotel DROP CONSTRAINT chk_hotel_countrooms;
       schema_hotel          postgres    false    215    215            �           2606    16540    order chk_payment    CHECK CONSTRAINT     �   ALTER TABLE schema_hotel."order"
    ADD CONSTRAINT chk_payment CHECK ((payment_type = ANY (ARRAY['visa'::text, 'mastercard'::text, 'mir pay'::text, 'apple pay'::text]))) NOT VALID;
 >   ALTER TABLE schema_hotel."order" DROP CONSTRAINT chk_payment;
       schema_hotel          postgres    false    222    222            �           2606    16563    sale chk_percent    CHECK CONSTRAINT     k   ALTER TABLE schema_hotel.sale
    ADD CONSTRAINT chk_percent CHECK ((sale_size > (0)::numeric)) NOT VALID;
 ;   ALTER TABLE schema_hotel.sale DROP CONSTRAINT chk_percent;
       schema_hotel          postgres    false    226    226            �           2606    16572    cleaning chk_statusclean    CHECK CONSTRAINT     �   ALTER TABLE schema_hotel.cleaning
    ADD CONSTRAINT chk_statusclean CHECK ((status_clean = ANY (ARRAY['clean'::text, 'no clean'::text]))) NOT VALID;
 C   ALTER TABLE schema_hotel.cleaning DROP CONSTRAINT chk_statusclean;
       schema_hotel          postgres    false    220    220            �           2606    16573    order chk_statusorder    CHECK CONSTRAINT     �   ALTER TABLE schema_hotel."order"
    ADD CONSTRAINT chk_statusorder CHECK ((status_order = ANY (ARRAY['approved'::text, 'not approved'::text, 'settlement'::text, 'left'::text, 'cancelled'::text, 'lateness'::text]))) NOT VALID;
 B   ALTER TABLE schema_hotel."order" DROP CONSTRAINT chk_statusorder;
       schema_hotel          postgres    false    222    222            �           2606    16549    employee position    CHECK CONSTRAINT     �   ALTER TABLE schema_hotel.employee
    ADD CONSTRAINT "position" CHECK ((("position")::text = ANY ((ARRAY['Administrator'::character varying, 'Cleaneress'::character varying, 'Director'::character varying])::text[]))) NOT VALID;
 >   ALTER TABLE schema_hotel.employee DROP CONSTRAINT "position";
       schema_hotel          postgres    false    213    213            �           2606    16468    order fk_client    FK CONSTRAINT     �   ALTER TABLE ONLY schema_hotel."order"
    ADD CONSTRAINT fk_client FOREIGN KEY (client) REFERENCES schema_hotel.client(id_client);
 A   ALTER TABLE ONLY schema_hotel."order" DROP CONSTRAINT fk_client;
       schema_hotel          postgres    false    222    3493    211            �           2606    16473    order fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY schema_hotel."order"
    ADD CONSTRAINT fk_employee FOREIGN KEY (employee) REFERENCES schema_hotel.employee(personal_number);
 C   ALTER TABLE ONLY schema_hotel."order" DROP CONSTRAINT fk_employee;
       schema_hotel          postgres    false    213    3495    222            �           2606    16437    room fk_hotel    FK CONSTRAINT     |   ALTER TABLE ONLY schema_hotel.room
    ADD CONSTRAINT fk_hotel FOREIGN KEY (hotel) REFERENCES schema_hotel.hotel(id_hotel);
 =   ALTER TABLE ONLY schema_hotel.room DROP CONSTRAINT fk_hotel;
       schema_hotel          postgres    false    3497    218    215            �           2606    16426    discount fk_id_hotel    FK CONSTRAINT     �   ALTER TABLE ONLY schema_hotel.discount
    ADD CONSTRAINT fk_id_hotel FOREIGN KEY (id_hotel) REFERENCES schema_hotel.hotel(id_hotel);
 D   ALTER TABLE ONLY schema_hotel.discount DROP CONSTRAINT fk_id_hotel;
       schema_hotel          postgres    false    3497    216    215            �           2606    16478    order fk_room    FK CONSTRAINT     {   ALTER TABLE ONLY schema_hotel."order"
    ADD CONSTRAINT fk_room FOREIGN KEY (room) REFERENCES schema_hotel.room(id_room);
 ?   ALTER TABLE ONLY schema_hotel."order" DROP CONSTRAINT fk_room;
       schema_hotel          postgres    false    218    3501    222            �           2606    16497    sale fk_room_type    FK CONSTRAINT     �   ALTER TABLE ONLY schema_hotel.sale
    ADD CONSTRAINT fk_room_type FOREIGN KEY (room_type) REFERENCES schema_hotel.type_room(id_type);
 A   ALTER TABLE ONLY schema_hotel.sale DROP CONSTRAINT fk_room_type;
       schema_hotel          postgres    false    226    3507    224            �           2606    16508    price fk_room_type    FK CONSTRAINT     �   ALTER TABLE ONLY schema_hotel.price
    ADD CONSTRAINT fk_room_type FOREIGN KEY (room_type) REFERENCES schema_hotel.type_room(id_type);
 B   ALTER TABLE ONLY schema_hotel.price DROP CONSTRAINT fk_room_type;
       schema_hotel          postgres    false    228    224    3507            �           2606    16517    room fk_type    FK CONSTRAINT     �   ALTER TABLE ONLY schema_hotel.room
    ADD CONSTRAINT fk_type FOREIGN KEY (type) REFERENCES schema_hotel.type_room(id_type) NOT VALID;
 <   ALTER TABLE ONLY schema_hotel.room DROP CONSTRAINT fk_type;
       schema_hotel          postgres    false    224    218    3507            �           2606    16455    cleaning id_employee    FK CONSTRAINT     �   ALTER TABLE ONLY schema_hotel.cleaning
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES schema_hotel.employee(personal_number);
 D   ALTER TABLE ONLY schema_hotel.cleaning DROP CONSTRAINT id_employee;
       schema_hotel          postgres    false    3495    213    220            �           2606    16450    cleaning id_room    FK CONSTRAINT        ALTER TABLE ONLY schema_hotel.cleaning
    ADD CONSTRAINT id_room FOREIGN KEY (id_room) REFERENCES schema_hotel.room(id_room);
 @   ALTER TABLE ONLY schema_hotel.cleaning DROP CONSTRAINT id_room;
       schema_hotel          postgres    false    218    3501    220                       826    16396    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     v   ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA schema_hotel GRANT ALL ON TABLES  TO postgres WITH GRANT OPTION;
          schema_hotel          postgres    false    6            W   c   x�u̱�0D��7�|vd����A��~��O���v\�~[�W#BH �$����%����,���3V��x��wj��HAt0�Le�m��yH�      N   �   x�]��JC1��ܧ����ڝ���p� nF;Ԑ{�������A$��9�oF��\�2�`�QB
���0��K�{��f��'��O�g�0Ů#V��ʹ��� a4�b��az�������uY����l{��uc�R
#E{s�� {���5��k�:B����\�ԍB*��`�$g��%W!jNi��\w��b�oek�      S   *   x�3�4�4�30�4202�5 "C8�؀�J␍���� iB
�      P   �   x�m�1�0��9=EN��V�'�ڨ�������
��'�Νsf�I��İ�$�Z�����(�,wnj�	�����X���b�+ff����z.(��ȉ����W�bS�!��~;y��"�I)�A�����m!�U�����������#���'�?���{�dY� ��ry      R   p   x�5̱
�0�����IP�*8����Ē!D4�bѿ���#��9���1�/�(�yp���@jE
c�9������������@w��4�T�������?�*e�jZ"��#�      Y   g   x�u�1
�0�z�~ r�E���&�������)�[Xf��B���؉ao�c�2o
M)�%������̹Iz|��<�����;�n{̓���=�-���)�      _   ,   x�3�4�4202�5 "0��T15�30�2�4¥��"F��� ���      U   G   x�-���@ѳ]������AF�%zRF��k�\���⩹p���'�h�_7x@��
y�X@�f�Z��      ]   !   x�3�4�4202�5 "Cӂ�@ψ+F��� h)�      [   �   x�U�1�0��99�;@A�{� F�u��&�\�Unߨ�����w�I�jF�e�43F5F�2������F��!Q�����T2��$�qr3N��OT���.<��%��ͽ��]|�&�w��گ��0�k��5�x ��>0     