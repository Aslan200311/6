PGDMP     '    "                |            lox    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    42334    lox    DATABASE     w   CREATE DATABASE lox WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE lox;
                postgres    false            �            1259    42349 (   ЗаявкаНаОбслуживание    TABLE     �   CREATE TABLE public."ЗаявкаНаОбслуживание" (
    "КодЗаявки" integer NOT NULL,
    "СтатусЗаявки" character varying,
    "Описание" character varying,
    "КодКлиента" integer
);
 >   DROP TABLE public."ЗаявкаНаОбслуживание";
       public         heap    postgres    false            �            1259    42363    ЗаявкаПоРемонту    TABLE     �   CREATE TABLE public."ЗаявкаПоРемонту" (
    "КодРемонта" integer NOT NULL,
    "КодОбработки" integer,
    "Описание" character varying
);
 4   DROP TABLE public."ЗаявкаПоРемонту";
       public         heap    postgres    false            �            1259    42342    Клиенты    TABLE     �   CREATE TABLE public."Клиенты" (
    "КодКлиента" integer NOT NULL,
    "Наименование" character varying
);
 $   DROP TABLE public."Клиенты";
       public         heap    postgres    false            �            1259    42356    ОбработкаЗаявки    TABLE     �   CREATE TABLE public."ОбработкаЗаявки" (
    "КодОбрабодки" integer NOT NULL,
    "КодСотрудника" integer,
    "КодЗаявки" integer
);
 4   DROP TABLE public."ОбработкаЗаявки";
       public         heap    postgres    false            �            1259    42335    Сотрудники    TABLE     �   CREATE TABLE public."Сотрудники" (
    "КодСотрудника" integer NOT NULL,
    "ФИО" character varying
);
 *   DROP TABLE public."Сотрудники";
       public         heap    postgres    false                      0    42349 (   ЗаявкаНаОбслуживание 
   TABLE DATA           �   COPY public."ЗаявкаНаОбслуживание" ("КодЗаявки", "СтатусЗаявки", "Описание", "КодКлиента") FROM stdin;
    public          postgres    false    216   K                  0    42363    ЗаявкаПоРемонту 
   TABLE DATA           �   COPY public."ЗаявкаПоРемонту" ("КодРемонта", "КодОбработки", "Описание") FROM stdin;
    public          postgres    false    218   h                  0    42342    Клиенты 
   TABLE DATA           ^   COPY public."Клиенты" ("КодКлиента", "Наименование") FROM stdin;
    public          postgres    false    215   �                  0    42356    ОбработкаЗаявки 
   TABLE DATA           �   COPY public."ОбработкаЗаявки" ("КодОбрабодки", "КодСотрудника", "КодЗаявки") FROM stdin;
    public          postgres    false    217   �                  0    42335    Сотрудники 
   TABLE DATA           X   COPY public."Сотрудники" ("КодСотрудника", "ФИО") FROM stdin;
    public          postgres    false    214   �        y           2606    42355 V   ЗаявкаНаОбслуживание ЗаявкаНаОбслуживание_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание"
    ADD CONSTRAINT "ЗаявкаНаОбслуживание_pkey" PRIMARY KEY ("КодЗаявки");
 �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание" DROP CONSTRAINT "ЗаявкаНаОбслуживание_pkey";
       public            postgres    false    216            }           2606    42369 B   ЗаявкаПоРемонту ЗаявкаПоРемонту_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаПоРемонту"
    ADD CONSTRAINT "ЗаявкаПоРемонту_pkey" PRIMARY KEY ("КодРемонта");
 p   ALTER TABLE ONLY public."ЗаявкаПоРемонту" DROP CONSTRAINT "ЗаявкаПоРемонту_pkey";
       public            postgres    false    218            w           2606    42348 "   Клиенты Клиенты_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Клиенты"
    ADD CONSTRAINT "Клиенты_pkey" PRIMARY KEY ("КодКлиента");
 P   ALTER TABLE ONLY public."Клиенты" DROP CONSTRAINT "Клиенты_pkey";
       public            postgres    false    215            {           2606    42362 B   ОбработкаЗаявки ОбработкаЗаявки_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT "ОбработкаЗаявки_pkey" PRIMARY KEY ("КодОбрабодки");
 p   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT "ОбработкаЗаявки_pkey";
       public            postgres    false    217            u           2606    42341 .   Сотрудники Сотрудники_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Сотрудники"
    ADD CONSTRAINT "Сотрудники_pkey" PRIMARY KEY ("КодСотрудника");
 \   ALTER TABLE ONLY public."Сотрудники" DROP CONSTRAINT "Сотрудники_pkey";
       public            postgres    false    214            �           2606    42385 #   ЗаявкаПоРемонту frk4    FK CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаПоРемонту"
    ADD CONSTRAINT frk4 FOREIGN KEY ("КодОбработки") REFERENCES public."ОбработкаЗаявки"("КодОбрабодки") NOT VALID;
 O   ALTER TABLE ONLY public."ЗаявкаПоРемонту" DROP CONSTRAINT frk4;
       public          postgres    false    3195    218    217                       2606    42380 $   ОбработкаЗаявки frke3    FK CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT frke3 FOREIGN KEY ("КодЗаявки") REFERENCES public."ЗаявкаНаОбслуживание"("КодЗаявки") NOT VALID;
 P   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT frke3;
       public          postgres    false    3193    217    216            ~           2606    42370 .   ЗаявкаНаОбслуживание frkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание"
    ADD CONSTRAINT frkey FOREIGN KEY ("КодКлиента") REFERENCES public."Клиенты"("КодКлиента") NOT VALID;
 Z   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание" DROP CONSTRAINT frkey;
       public          postgres    false    216    215    3191            �           2606    42375 %   ОбработкаЗаявки frkey2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT frkey2 FOREIGN KEY ("КодСотрудника") REFERENCES public."Сотрудники"("КодСотрудника") NOT VALID;
 Q   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT frkey2;
       public          postgres    false    3189    217    214                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     