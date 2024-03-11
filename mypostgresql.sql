PGDMP     &                    |            sampledb    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16486    sampledb    DATABASE     ~   CREATE DATABASE sampledb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Croatian_Croatia.1250';
    DROP DATABASE sampledb;
                postgres    false                        3079    16487    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            �           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2            �            1259    40129    char    TABLE     p   CREATE TABLE public."char" (
    x double precision,
    y double precision,
    objectid_1 integer NOT NULL
);
    DROP TABLE public."char";
       public         heap    postgres    false            �            1259    17574 
   characters    TABLE     �   CREATE TABLE public.characters (
    "X" double precision,
    "Y" double precision,
    "OBJECTID_1" integer NOT NULL,
    "NAZIV" character varying,
    "ADRESA" character varying
);
    DROP TABLE public.characters;
       public         heap    postgres    false            �            1259    17581    details    TABLE     �   CREATE TABLE public.details (
    "X" double precision,
    "Y" double precision,
    "OBJECTID_1" integer NOT NULL,
    "NAZIV" character varying,
    "ADRESA" character varying,
    points public.geography
);
    DROP TABLE public.details;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    17543 
   geometries    TABLE     Y   CREATE TABLE public.geometries (
    name character varying,
    geom public.geometry
);
    DROP TABLE public.geometries;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    40145 
   koordinate    TABLE     W   CREATE TABLE public.koordinate (
    "X" double precision,
    "Y" double precision
);
    DROP TABLE public.koordinate;
       public         heap    postgres    false            �            1259    40150    test    TABLE     �   CREATE TABLE public.test (
    id integer NOT NULL,
    points public.geography,
    naziv character varying,
    adresa character varying
);
    DROP TABLE public.test;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    40187    tests    TABLE     �   CREATE TABLE public.tests (
    id integer NOT NULL,
    points public.geography,
    naziv character varying,
    adresa character varying
);
    DROP TABLE public.tests;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    40169    tocka    TABLE     T   CREATE TABLE public.tocka (
    id integer NOT NULL,
    points public.geography
);
    DROP TABLE public.tocka;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    40182    x    TABLE     �   CREATE TABLE public.x (
    id integer NOT NULL,
    points public.geography,
    naziv character varying,
    adresa character varying
);
    DROP TABLE public.x;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �          0    40129    char 
   TABLE DATA           2   COPY public."char" (x, y, objectid_1) FROM stdin;
    public          postgres    false    223   
       �          0    17574 
   characters 
   TABLE DATA           O   COPY public.characters ("X", "Y", "OBJECTID_1", "NAZIV", "ADRESA") FROM stdin;
    public          postgres    false    221   3       �          0    17581    details 
   TABLE DATA           T   COPY public.details ("X", "Y", "OBJECTID_1", "NAZIV", "ADRESA", points) FROM stdin;
    public          postgres    false    222   �)       �          0    17543 
   geometries 
   TABLE DATA           0   COPY public.geometries (name, geom) FROM stdin;
    public          postgres    false    220   .       �          0    40145 
   koordinate 
   TABLE DATA           .   COPY public.koordinate ("X", "Y") FROM stdin;
    public          postgres    false    224   �.       �          0    16800    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    216   �.       �          0    40150    test 
   TABLE DATA           9   COPY public.test (id, points, naziv, adresa) FROM stdin;
    public          postgres    false    225   
/       �          0    40187    tests 
   TABLE DATA           :   COPY public.tests (id, points, naziv, adresa) FROM stdin;
    public          postgres    false    228   �?       �          0    40169    tocka 
   TABLE DATA           +   COPY public.tocka (id, points) FROM stdin;
    public          postgres    false    226   @       �          0    40182    x 
   TABLE DATA           6   COPY public.x (id, points, naziv, adresa) FROM stdin;
    public          postgres    false    227   Q@                  2606    40135    char char_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."char"
    ADD CONSTRAINT char_pkey PRIMARY KEY (objectid_1);
 :   ALTER TABLE ONLY public."char" DROP CONSTRAINT char_pkey;
       public            postgres    false    223                       2606    17580    characters characters_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY ("OBJECTID_1");
 D   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_pkey;
       public            postgres    false    221                       2606    17587    details details_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_pkey PRIMARY KEY ("OBJECTID_1");
 >   ALTER TABLE ONLY public.details DROP CONSTRAINT details_pkey;
       public            postgres    false    222            
           2606    40156    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    225                       2606    40193    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    228                       2606    40175    tocka tocka_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tocka
    ADD CONSTRAINT tocka_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tocka DROP CONSTRAINT tocka_pkey;
       public            postgres    false    226            �      x�34�35�445Q\1z\\\ $D      �   H
  x��X�r�8<S_����Z�G��n��";؏�P���䏘���_�@�Ъ[�a��V0�B!++�>o������?R�TB�ȦS��n��ݜ���L�4�օ'i��V��������/T��C��Z#cAh�\�͌F�P�������>hke���VjMc�ׇS�v��ڗ�t�{��q�,�x-�,k�;ϻv?��cj�4�R+��t�Bj%|�z=N4*��/\�n.����{�Z����v�4�_�}M�S��W�J+-$�Di)��,<�iY`�i�u�sb��cAnӈ`��[p1c���#�t�Q~�(�����M}J2R
k�2�{k〒P�ҁB�ǧ��9���ďS7T's%@��G�l
�"���D�Ӑ�Ә� �؃��RZ�ȁ��(2��j�y �����&R��#�0�S�>@�Dh�qy���hi�����43���g����w"�Fb����*Z��W��;L9������R똽R;'���
PI$:��}����-��4!`g�D�͑+��r�6��ο�.A�M�S�<�̒15��5J<Ȗc$���r7dZ:�U���;����j�X�Dd��\$J�L_di=>�O(�L�*�}�R�3�̒8�q�s1'�6'��f6�䉀IV6X�(+��H���9�g��}ڕ��L�6�fy[�Q]�Q5�6N�͑�-������#�����D]���ל��yN?����0�q���#�:��Z�,Da%@Fz�"���R�B.}��"�بxG4]v�j�
	���K���[��~)�|n)+�D�Q�6��z-�()�h�LkP���V����=�J�~Z��蘨:��[s�8f�VM�&D�F7�X6\���@����|�9Z:���5��,�?�͈	��T�����%�W4+�[A� ��� 6T<RE����8`U��7�~ם["L�ǰYʇh�b���R��f��cXJ-���r��zhm��Q3���];w��f�]��/�k���pN;�y%������w%�&2�������,��9�ߧ��X`�1�8�@^���Jiμь�1�p*?	N��TLp��U�=��.�?���4�N`�'�ո�V�\�KJ-�7s�6A*��Pj×���rm&*�p>�[�i�}+�u��yh��tK#|ERo<�>�Iɂ��Y�D��lB�2O���Sz�6Sm���[�;%lU¶�@l��wŃ�2$�B-H��ŋ��ޟ��P�d�G�Y�xl�|��fc��Y���$�q�-_��E�R8B6����1�I*D���;C���a �H�EA��J�t�v�'<:!*�V08��k�^�x8D��Nxh%�]5�-�ô�QR5/)��B\IȲ(��(o~Y`H�s�����U�!�
���ǆ�pr3p��OZ����ؐ�������{C���Rk�WQN��;Hz4����\�����i�wW,�Y`B�7a�R�+�0)4�����.%�=�#�D�廠8n$��2JI��z�_��b.��7"�i����ϣ#V�n��Hg�cc5|�v�`�ͨXO!���5T�٢u%��_�i>�XJ�BJ���͂�FT�"�q�1���p�"�!�JQ4��?���T�	9p�$Z��dl�)��Z�0�����|�_�A�FvY8^,�V�i�|4.	ƑGD�ʓ�F^�.�;]��z_��5���5�b�5w6���y�H!��z�{�P�GS���/�t�F��/v0�:gn���o4�����.-�`F�����!�"x��N��^�G����
Z'&q�/7�}U�F%b;�ºX�JD�����%�~�����b��,z�� �m|X����=iB1q1p;�yr�Fq����d٬���<|yK�
�Z������j,L��5e�f1�M�����������3�e֒p��Խ��l����R�ѳ	z#�cm�`W�5��b�Y]|J�X��`.�
yb,:9\c���3����M0�v�s�n���=U��o*o�f����o��WB0+��A!WnM����@R�q�Ԯ�uO�y0Y�uD6�]b���}��<�����ȴ+�jZ�,!�v~��\��ks�f@��a֡���P��`濵�*�_+��8O���#�봽?Њ!ϗv}FɍWx~�Niwj`���`�d˅��5����"VP��*����-�0��<c���#���.��q��(Ooz�z5�!IM~�AG%�\��yj�eޓkx<���uNY��-�2ҷ��G�?cv;eR�1`<NB�.�}��)	ڥ=�."(H�U/�pB�)a:���P���PY���.,����r�і,qN����e����W�`���$Ԅ�\']~ʬxO`|����X~���t&+#8_-�d~�gũ�.���o�n|kN��v�P��$i�Ÿ6x�ϥB7�ˮ?6�qͯ����ߗ�S��b�u�O߫ٳ1d�����4���_~���i���Kk��Q�T�b��"�� \Py�:�	�j�V��¤۷��:�ӡ��ˊ�eB��ɓ9X��]�]�-�R6��s;\БG��s?�㦡a j��ַ9i� o4���k��ߨ��	�:�s���ӟ�OOO����c      �   l  x���Kn�:E��*��d�;�d&�-K�>F#����o	�H��}��(�#���S�*޺$�;��#v���p[O.�=v��������S��pn�H~�O9��3B0 b��%�B�kb��q|F0K`&�·��=m}���@_|��n6�B�<��D������a<��o=���?qh���k\AٛkEԌ���/�N�7�\
\h���m	c2���f&�ݩ�n���~��|��.u9ˉ���N��a�s�f����ݷ��¬�_Θ)e	g3�U���؆7O�޷��6�0X����𬎓��{�.K�n��*줔`Ϫ�LIL}�L��i.˭R��!)�gI���"��9�1�3U����p���4'<kb���v���B,�Z:��9���:2LbAj���Cl�>�t��[-puA�ݞvC�i��U�k_ �X>�ƃ�� [��̀����󏗤泿`�1�z��w�m���=~��˃\x�<w�x*@<
 4�Zdn,YYc΢�������<b�Uq�F��{:U}<��^C2i/AR������K��L����������J#'J�}��Ϩ�C�����)���PF�PB9C�,�f�J:���)��}��:�"Z�Tw�vD��O/ݹknU����$�����jB������~�ӏɻ��8�5[������A�(h}+����|��e@�t�j"��8�?�#��yr�%����q$<�c��y�0M��(c�V����4/c�����xC�)(����/px ;�J?����i����%4�x\��|"8�`.�kh�4�~s ��]9�ށӜà��:��C�l����J��"5^��R���J��W�J�/*E�]e�~��4Jr�$�9��>����-�m�0�＀�x��<^p�������'9K���O�V�)�3� ]��My�|z�H��slɄ��z�٪Z{+RV�ԝ��{|��}]oiw8��B�N�n�a�~�h�[��
�T2L�Gۗ���p�E�US:%eWE�\nv`&��m�G�F.���K%)�>֧����RYX7�gz�G@h��jj�*���]o����)���#c|��o��kek�gmk#AQl�P��/-<��;!?wOOO����E      �   �   x����+�40B� �Of^jqIQf^:H�T؄8�������PB� >W@~Nez~�i�PQ��L)w"!yR�c0/�g�dx��"{�dx���˓�+��NBAFL,��'�>.������LH�1�J�BG�������b���� ���q      �   2   x��� ��s�H����:�\�����AU�|;df�ݔ�8����      �      x������ � �      �      x��ZIrK�\+O��勉Jh Ak��y���:�.R;�^푑 ��%�$�Hz��ܟ{d�/B�7~)Q��A�X���Ő��Fx��*I�F|����u�o����-mλ9�F���y7�L��$]�zM�e�1��M;�b�������
��n�O��1�Ll&���H]�"w�7`��Ñ6{:ʾn�X�&�C5�����6g˘>��5����H�Gڜ^�3�iS���3�v�a�
n�u(�lv%�1�\���+������\.����<�l�X�^p25l���œb���*�&'恗������^9<�����as����)��V+‬�G(���2\F����K�YtHS����V��B>�_?h�J�M
η,]-!����6j�\���h���o�IG��O3��+��G����먤��6�F'\��>���׏��1�R9����S���-��>������Yy�s���`�b1��Ұ�ȐmʻzS7�W�c�/�����<�N�#PR�
�^Tn[
��1^��߸�Z_��O�W�;6���q�=N��M�5e��҅:$�M-�ڇ��]mN�Xe\V2#E�i�`��e4R���|z>���t���ݤe�$ǘRu.V��.��~'.p[J�"	y�l�;\lz�{��L�X�y�ҷ�үؠ����c��}�,q�w�V���TNF��QZ}�W,�R�*Q�+�ss���v�M:
��������|��!�0�X�V5�Ƹh(�ߪ��������)��>v官��^ٌ��v�{	FӨ���\���|]�������8nIcd��K�ݪ�X������4�n^�?�����#�1�([�\�Ve�p�I�Q���1K�����Q��G��(B��=�[��֩���χ�@qL˶5Y�$9 (��J��C�>�vuN��]p~���қ��}G��&���5&OM���d/70�u�����R�'M��6���52�@29S>}���38fRh�r�M��tUa�D�H�>�h����N�ͥ��"���f�z����>�O���֥�� ����e�ϓ�H����bUb � VIW�;���e�w^�Z}5.C��ԅ��D�<��#^�n�Ҥ9��]�*�3�U�(H�-gF�?}�;f�[:�#����Lѭ�AT��S��Q�<&`�u�6��=�[�k���8F9O�ʴD$Ruv]��{��/��U����wK�QX����������產4+���
�ڠ9��`�l�b�_�K�X�k��^���%}�{��	���(*��Ф�\B��/B��q-������ �����w���`8�f�eU���T)�l�������wnR�����֤
�;�vJ
� վ}����c����P�K�$�ȇy?�rDց��7x=/>?�x�4��F��t�w��pM�)�[o�yMOʧZ����iw���cˮq�p�ڃ�6v�B3Z���nӹ�kd6岎�\�R����X��Fw�aT�����#�R��jS��t�ǽ�%��k%.嚱��@��n�O��u�EL��b���t�n8����on�%1�J�]����O2�E/,G1�)t��,��5
�]�<��qO�����|�,ǣXIzUj0!@A�L?� ���RiWQ�G*��aw�;��d9I�����;�U��8EE^�e�0���Ȣ��4c�\��M&YJy��<��$R��F� %�T�R3W��^뒻F�Qm�=J�Q6m��0���BsW������p��i����'�Q��J��h�M�)G�/���t��R�c�,��
���k�`)��f]�2�kTߞzhy���b�'xO**��M��9���eِ+��-��D�X��v�B�L�ޜɩ�qկ<%�����j�`o5E�+�7z8�t�v:L��~�%��c����Ѳ���8ԭc�
��L�u�Tn#M���S��,��{ʁ�D�t�EmBb�$�[6�}簈;�x?�#;9�
�j�lV�+��i�u�>��fr�6%E�q�!�[j�"�'p�&Ƕ�l� �p�������H�֠��;��,��� �dx��.�$&rB��|}�����_��V�ۜ���\����}�ہ`V���3�?��Z�er5�	��]�|@�l��5�i�x}���>o�&�1�J��+Ue��Ľ�dC��O���c�R��Z���)(f�8!�p�����$�I�8PMn���B�5��s�� 5�_Ɩ'��GM!4]α#����nhDv�mj�H�u bs��0϶�+b?z��&4�5��}n�[�[ĖJ�;�5���q-�GzXf�<{V�}B�G����P��0`�KX������Ƕs����bZ�j�\G��1��i޽���#}'c۞ ��]F�0p�KJ.�F��h.9���k�>c��h�P��xd�B����/�M�-�յ�+н�[�=�M'М� ��&+*����!\�2O��0I�@��X\s:U�S��F1�:�I���>��Z!e2��o�Ҳ�8�蒲V^��5H(�V,��� �v�5�����T߄���C&�u~s��3�� 6�ho�n�o�@D�6��a��c��Ҵ�a�a?���+� ���㑐��PO�c�(�2��Y
ڄO���ڏ�
e=vm�/���^H��m�N�C}A�|��*�FRё.�}h圎��������7���nL�h���}�} <P�!���9��m� <���T�h��nO@i��+)��H�+x5E��k%�e���Q*�Ⱥ�T�{���I1�߼hʮ&	=
1.d�L�H���z8§��l^N�e�ʈ�N� �^�uJ�I�L.��[:���Sd�I��+�)y�#����w��X� �7���>E6��V��p8�`�(�B�nH@w��h_��Fbh���`|1�����
���ՏVD��HS�%��mt:�b�"ƈ��r�FO���7uɱ&#�S�C�kEBо����U�	�ۚ��&�y4�����2�3@��SS�$Tlv ��~����U�#����d�L�0u�>b"��w��L���Qƣ	K|�"��`e���ar�A�ї�Z����
�SI�x�~�l��:����@��!x�ܚ�����"%��r����N�&�ٹR��9Duw½=�jtKʾ�P羯W6\9K�J�[�m_���q	VI�f����L� �  9&me@z6���r�)����|�D�d�8$C����8Z�i��&��R�RJ�����ƹ~�����k���v�b�k_�XU�LVI��{�*���G!�1qy�{	���Q�Q���e)g����������O<�UxJ	Q\ϳ��u7��S%U$G'�bQ#��=y�������^��77�����=��~���^{Ⱥ���J�MBNN2���"3��uL��,G���A��:k�W��{���j���/9�,(�#9�A� Wt�'%��BI��wJ N��h����b�=4k�v��rb�y�Bw/o��\�jCO������i�@�F����8R���~��g�
ʠ��W�谣K�n"Ãc�� ?�Z��r,j)�ܼ��IQI������7�q�zʢ�ٻ���vg!񋀐��#	i�8����-���e�l��^�뤫�\<	�$tz�O�'Ē�͐kL0#�Er_��Cjwc�LA�Bi��0(����M3��͘F ]_�p/�(����g�wc�U��:j��+��"A�������ej����:��L�8l�������U���0�da� �U�ڹ^3Eb/!T]D�-+�i�l|.9q�.o���k ��� e�ؔ�-[��lDN+VU޽3����do�[�>��,|"�kw����m�P�{� ������H�ͽ� ��.�w�
��^/�K�(D�17m��U)�(=(���X��_�3DƎ�;[�]�ۨJ�
A����~@5NH���+몿E�DC���$@�$VWV�D��H�Tx��6o��5��}�S�i\l��!n�g��s=�ݗm=b �   ��q�3�I��
ic!D0�q��) �a}�A����6vh{/@�f#�B'^^�O�I���N��*�"�z�b@����Yq�S6��Q0c�E2{#�O���A�O��o_N�t�Mc4��"�jC�M�5�;��&���~����I��<�?}H�Aٗ��h�2$�ڰ�����a�<`����ٝ!�{t���zr���_M�������      �      x������ � �      �   ;   x�3�40B 02p53�L͌�]�\�̝�LLM�\�͌͜��͍�L�b���� XJy      �      x������ � �     