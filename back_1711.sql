PGDMP     9    1    
        
    x            postgres    13.0    13.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3016                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    32816    schedule    TABLE     V   CREATE TABLE public.schedule (
    schedule text NOT NULL,
    login text NOT NULL
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            �            1259    32822 	   subjectok    TABLE     �   CREATE TABLE public.subjectok (
    subject text NOT NULL,
    schedule text NOT NULL,
    cloud text,
    days text[],
    "time" text[]
);
    DROP TABLE public.subjectok;
       public         heap    postgres    false            �            1259    32828    task    TABLE     �   CREATE TABLE public.task (
    task text NOT NULL,
    subject text NOT NULL,
    description text NOT NULL,
    deadline date NOT NULL,
    "time" time without time zone,
    img text
);
    DROP TABLE public.task;
       public         heap    postgres    false            �            1259    32834    userok    TABLE     T   CREATE TABLE public.userok (
    login text NOT NULL,
    password text NOT NULL
);
    DROP TABLE public.userok;
       public         heap    postgres    false            �          0    32816    schedule 
   TABLE DATA                 public          postgres    false    201   �       �          0    32822 	   subjectok 
   TABLE DATA                 public          postgres    false    202   W       �          0    32828    task 
   TABLE DATA                 public          postgres    false    203   �       �          0    32834    userok 
   TABLE DATA                 public          postgres    false    204   /       2           2606    32841    schedule schedule_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (schedule);
 @   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_pkey;
       public            postgres    false    201            5           2606    32843    subjectok subject_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.subjectok
    ADD CONSTRAINT subject_pkey PRIMARY KEY (subject);
 @   ALTER TABLE ONLY public.subjectok DROP CONSTRAINT subject_pkey;
       public            postgres    false    202            7           2606    32845    task task_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (task);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public            postgres    false    203            9           2606    32847    userok user_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.userok
    ADD CONSTRAINT user_pkey PRIMARY KEY (login);
 :   ALTER TABLE ONLY public.userok DROP CONSTRAINT user_pkey;
       public            postgres    false    204            3           1259    32848    fki_sch name    INDEX     H   CREATE INDEX "fki_sch name" ON public.subjectok USING btree (schedule);
 "   DROP INDEX public."fki_sch name";
       public            postgres    false    202            ;           2606    32849    subjectok newFK    FK CONSTRAINT     z   ALTER TABLE ONLY public.subjectok
    ADD CONSTRAINT "newFK" FOREIGN KEY (schedule) REFERENCES public.schedule(schedule);
 ;   ALTER TABLE ONLY public.subjectok DROP CONSTRAINT "newFK";
       public          postgres    false    202    201    2866            <           2606    32854 	   task subj    FK CONSTRAINT     q   ALTER TABLE ONLY public.task
    ADD CONSTRAINT subj FOREIGN KEY (subject) REFERENCES public.subjectok(subject);
 3   ALTER TABLE ONLY public.task DROP CONSTRAINT subj;
       public          postgres    false    203    2869    202            :           2606    32859    schedule user    FK CONSTRAINT     p   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT "user" FOREIGN KEY (login) REFERENCES public.userok(login);
 9   ALTER TABLE ONLY public.schedule DROP CONSTRAINT "user";
       public          postgres    false    204    2873    201            �   p   x���v
Q���W((M��L�+N�HM)�IUЀ�tr��3�4�}B]�4��B}�\���\�uԋ�*�5��<�3-�47)�H��<��e�����ϡ���A\\ �^�      �   $  x����J�@��y����0��<y�! l��&+�&F�."%��,�J����f�ȝ�A�z�X�]v�ٝa>��F������n�,
��T�.�/�+�~mR.	?JT�L�S��c�������p]W?�%U@o��^������6�2kNkZQ�"�uF��\��5J%�N(�
/nCL�2��ut���#�?4eαg�m��7e�tДM�����:^�����Y2�5�q�w(���tNlӹ�Mg0M�_�l�;TP�2�V[Dc1�6�Pi��9/@9s��Ny��,�ڂ��!�g�      �   �  x�œ�N�@��<��BR�b��r��H0p�����btg ML|�AC}�;o�S�\��NΙN�3wr�b���B��^�e�I��6!&�*��j�2=j�k^ڎgw;RTj-�c���U�n��p~�/g�S�}�/���)*(�!n�a�RZg�K/�R,�y��*����7~��	���@�e_<.�@#r� G���9NW��C��n�C@2���,���1N�]�1J�SF��)\�D<���1��Cx�+������^3R1��!fX؀��D�*�f �&������J� �jCTCI����+�L�� #����E�$G�"~]��r�y�kh���d�t��Z��N�ݶf�3�u�j��:�2���f�6�'7�:�l8u��F"����      �   �   x���v
Q���W((M��L�+-N-��V���O���Q(H,..�/J�Ts�	uV�P/N̫LT�QP7200T״��$����)�A����d�v��1Ȭ��Ԣ�J�M�K-W��&۰���Ԥ��J�a��V�Z\��4##�q\\ ]���     