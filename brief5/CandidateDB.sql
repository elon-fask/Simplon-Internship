PGDMP     8    #    
            z           Brief5    14.3    14.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16447    Brief5    DATABASE     m   CREATE DATABASE "Brief5" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE "Brief5";
                postgres    false            �            1259    16456    candidat    TABLE       CREATE TABLE public.candidat (
    id_cd integer NOT NULL,
    nom character varying(15),
    prenom character varying(15),
    mail character varying(30),
    adresse character varying(60),
    ville character varying(20),
    pays character varying(20)
);
    DROP TABLE public.candidat;
       public         heap    postgres    false            �            1259    16455    candidat_id_cd_seq    SEQUENCE     �   CREATE SEQUENCE public.candidat_id_cd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.candidat_id_cd_seq;
       public          postgres    false    210            �           0    0    candidat_id_cd_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.candidat_id_cd_seq OWNED BY public.candidat.id_cd;
          public          postgres    false    209            \           2604    16459    candidat id_cd    DEFAULT     p   ALTER TABLE ONLY public.candidat ALTER COLUMN id_cd SET DEFAULT nextval('public.candidat_id_cd_seq'::regclass);
 =   ALTER TABLE public.candidat ALTER COLUMN id_cd DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    16456    candidat 
   TABLE DATA           R   COPY public.candidat (id_cd, nom, prenom, mail, adresse, ville, pays) FROM stdin;
    public          postgres    false    210   2       �           0    0    candidat_id_cd_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.candidat_id_cd_seq', 6, true);
          public          postgres    false    209            ^           2606    16461    candidat candidat_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.candidat
    ADD CONSTRAINT candidat_pkey PRIMARY KEY (id_cd);
 @   ALTER TABLE ONLY public.candidat DROP CONSTRAINT candidat_pkey;
       public            postgres    false    210            �   �   x����
�0Dϻ_��hճ?C�i7m�FRE�{���������<�-���!~��ǯV�FELM��^�`#F��%����OOP2d�4��j�|���XbE�4� ���O�P=�#���?������9_�     