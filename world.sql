PGDMP         !                |           world    15.4    15.4 (    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    16398    world    DATABASE     �   CREATE DATABASE world WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE world;
                postgres    false            �            1259    16400    capitals    TABLE     �   CREATE TABLE public.capitals (
    id integer NOT NULL,
    country character varying(45),
    capital character varying(45)
);
    DROP TABLE public.capitals;
       public         heap    postgres    false            �            1259    16399    capitals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.capitals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.capitals_id_seq;
       public          postgres    false    215            (           0    0    capitals_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.capitals_id_seq OWNED BY public.capitals.id;
          public          postgres    false    214            �            1259    24586 	   countries    TABLE     �   CREATE TABLE public.countries (
    id integer NOT NULL,
    country_code character(2),
    country_name character varying(100)
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    24585    countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    223            )           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    222            �            1259    16410    flags    TABLE     f   CREATE TABLE public.flags (
    id integer NOT NULL,
    name character varying(45),
    flag text
);
    DROP TABLE public.flags;
       public         heap    postgres    false            �            1259    16409    flags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.flags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.flags_id_seq;
       public          postgres    false    217            *           0    0    flags_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.flags_id_seq OWNED BY public.flags.id;
          public          postgres    false    216            �            1259    24577    visited_countries    TABLE     k   CREATE TABLE public.visited_countries (
    id integer NOT NULL,
    country_code character(2) NOT NULL
);
 %   DROP TABLE public.visited_countries;
       public         heap    postgres    false            �            1259    24576    visited_countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.visited_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.visited_countries_id_seq;
       public          postgres    false    221            +           0    0    visited_countries_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.visited_countries_id_seq OWNED BY public.visited_countries.id;
          public          postgres    false    220            �            1259    16419 
   world_food    TABLE     �   CREATE TABLE public.world_food (
    id integer NOT NULL,
    country character varying(45),
    rice_production double precision,
    wheat_production double precision
);
    DROP TABLE public.world_food;
       public         heap    postgres    false            �            1259    16418    world_food_id_seq    SEQUENCE     �   CREATE SEQUENCE public.world_food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.world_food_id_seq;
       public          postgres    false    219            ,           0    0    world_food_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.world_food_id_seq OWNED BY public.world_food.id;
          public          postgres    false    218            y           2604    16403    capitals id    DEFAULT     j   ALTER TABLE ONLY public.capitals ALTER COLUMN id SET DEFAULT nextval('public.capitals_id_seq'::regclass);
 :   ALTER TABLE public.capitals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            }           2604    24589    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            z           2604    16413    flags id    DEFAULT     d   ALTER TABLE ONLY public.flags ALTER COLUMN id SET DEFAULT nextval('public.flags_id_seq'::regclass);
 7   ALTER TABLE public.flags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            |           2604    24580    visited_countries id    DEFAULT     |   ALTER TABLE ONLY public.visited_countries ALTER COLUMN id SET DEFAULT nextval('public.visited_countries_id_seq'::regclass);
 C   ALTER TABLE public.visited_countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            {           2604    16422    world_food id    DEFAULT     n   ALTER TABLE ONLY public.world_food ALTER COLUMN id SET DEFAULT nextval('public.world_food_id_seq'::regclass);
 <   ALTER TABLE public.world_food ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                      0    16400    capitals 
   TABLE DATA           8   COPY public.capitals (id, country, capital) FROM stdin;
    public          postgres    false    215   �)       !          0    24586 	   countries 
   TABLE DATA           C   COPY public.countries (id, country_code, country_name) FROM stdin;
    public          postgres    false    223   �7                 0    16410    flags 
   TABLE DATA           /   COPY public.flags (id, name, flag) FROM stdin;
    public          postgres    false    217   B                 0    24577    visited_countries 
   TABLE DATA           =   COPY public.visited_countries (id, country_code) FROM stdin;
    public          postgres    false    221   ~M                 0    16419 
   world_food 
   TABLE DATA           T   COPY public.world_food (id, country, rice_production, wheat_production) FROM stdin;
    public          postgres    false    219   �M       -           0    0    capitals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.capitals_id_seq', 1, false);
          public          postgres    false    214            .           0    0    countries_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries_id_seq', 1, false);
          public          postgres    false    222            /           0    0    flags_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.flags_id_seq', 1, false);
          public          postgres    false    216            0           0    0    visited_countries_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.visited_countries_id_seq', 24, true);
          public          postgres    false    220            1           0    0    world_food_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.world_food_id_seq', 10, true);
          public          postgres    false    218                       2606    16405    capitals capitals_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.capitals
    ADD CONSTRAINT capitals_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.capitals DROP CONSTRAINT capitals_pkey;
       public            postgres    false    215            �           2606    24591    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    223            �           2606    16417    flags flags_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.flags DROP CONSTRAINT flags_pkey;
       public            postgres    false    217            �           2606    24584 4   visited_countries visited_countries_country_code_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_country_code_key UNIQUE (country_code);
 ^   ALTER TABLE ONLY public.visited_countries DROP CONSTRAINT visited_countries_country_code_key;
       public            postgres    false    221            �           2606    24582 (   visited_countries visited_countries_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.visited_countries DROP CONSTRAINT visited_countries_pkey;
       public            postgres    false    221            �           2606    16424    world_food world_food_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.world_food
    ADD CONSTRAINT world_food_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.world_food DROP CONSTRAINT world_food_pkey;
       public            postgres    false    219               y  x�]��r۸�������$U+)�:_��$>��r���u�	�$4 !��6�j�~�y��5(f��L����c���R7��t�.�*TI��n��k+�V]koM��&2�b�V���F'#��xZ��d�5��nҥ��V��p��K&j���{��L+�>����Q�*��[�d&��2��K�>�2�d���~ݱ���M28�-�NY1=�~r������+���d0P_&5ZӸ6]XoAK_��w��N7� �|Xi��ɓ���b�nV�s'�q/E�`M�!(�l�J�G�x�7!�x�^�6�f�IST:7m�NK��Iv���:w�:�6/L瞚$�cSi0�m�M�e"(l����Tm�Ef��<j�E�l��-o��ܧ�sI6F�k1�]۪s̛��2���K[oːdSu�*�C�eX{��|�����.mӥg�;�T�c�1�%�1Mn9!�����/�?�����K�����` ׵O�C]��1���3�!�ĳC����V�h-�O��ا�m�~eC�����������:�l�^ 2}(vj���ڧK�2=6�f�d��BUh������(����u�{�N	��p"c�]y>�z���x�W���۲quzk�2�Dl�s��];>Bù����߻�����-qm|n�-1�l�l_��K�]G���L��X;]�����lê��S�&��:)u�n~;}���#$�28���E"�`�m�d4A���Z�/�?����b��3�Uݚ��pi�����zƟ���%���\��"Ǯp���MF��jM��m2FwG�G?�In�1�9�y]v�#�u2F%G̥w��hA^��F/י����;Gx�x�=��m��׎qa�]B�xG�j��.�Y%cT�,��wa����?ک�r�:f���[I���xh�~�f]�Y���ԩ��ڳ��u4u���굽$�Kݲʜ�M��%�����ɑ:}�+:��#����m#�ߡ��${�� �K���P�a���bx��b��:[�٫�%���Y��vĜ�J��:���j�,#z�/�d�����D�E��� ZE�&��:#�<�E�N:���Y�H� �m�$�#u֕�m�L��W`G2�s]m�Qk�@�@�4c�;�:p�<�۱�P��o_�K�61z������d:V� ��#��d:��4��H7��$��������i%�IO�16{[���7����(�I��>ŝ��2��֨+�����!��H)f���T�٠Op1�
�6�e�<���v�l�.J9�bMt%���`Y]Q�~%����Ơ�#6m2�DAo��6�l*��AR{h�@�fꂸ0�[9��(ȡ�2R�&��ȓ���w���o���Q��%`���#�/��7�g/P�3>C%s��Ç��χÃ�ӱm[T�H�(��Lēƚ8s*���?�z�{���k�D���S�����2��/���u��am]m�l&�"���ϋ�w���|����R�S(�[ �q���M4��o��ҁ��Iݘ���T�E����Q����;���P}�R|�q4��?q@Q�B;���N%�e�D}m�6��f�%�n�p��v�ڃ5%�h��� p
ID�s�[��m�Nt$+��-e����!�o��L\Ե�
�t������p!�9;4��4{��X�#$��z��Hz/.�\��HR^l�r�.�.<<��@�.���?�m��rc�&l�JS7�a�$� �t�;�(w�����2Rҍ����']��u��Z�h(�Y�k<�D>�-���{����)�8ԃ��3�	���>ت�!�BV�20���w?���Z��X��Ϲ&�
ݮ�^a���dl�ɲSE�=�,�Gd{	�� �v�m�QpFr�3B�+�;��uj������q\aΝ�$J�l+Ci�H	P��_�A�^G<��Vջ�1xYU�����:�,�M}r�9�h�v�qAo֥�����0��b�W.��G���9�'E;�m�:��/��:�d\��&���E� �۵w/0]ٍ�$P�kW�n���P �,4�k�H&�N�o�=H�|*ro
Oĺ�pB��ŁVh�n�}-e �<�5k�Q�P^s���8�z(���58Fi$]���ަ��	y�{m�*��M^:�x��v
0���H��Yؕdd�N��#��@� +�H@XwN��\PiVfq��#��4R���؍�c�^�)m�!�d(D$
���£L��=�WN��/W�P�w�C��XW��n�8 �H��#d���ˍ�>L�8$W�O��V�Vg0�?���V��+��@���˭����|[�(��B�Pk�Me6�axH"#0e߷�밵&�	�;܅��Ʀ��8@��@?�`�C��O��v%32�#b�=���AjnY��66so��-H�5��X����_z�& �8�7З�`�Wb^#{�����S�a�w�`�R1&���Zhũ+��rgB���"�	�*k���?�8�rq��qG�m׎�!.wO�x�O��]^�DD�9��]ڮkc/uj{>�E:2�����(�Bޤ��Fj��Z�ٗI�����Sg��Bx�Vr��s�h�C��s��ӡ�8~-!�b���=&�Dq���xiBĴ��/B��U�.Í{���!��v��u���nͫ�)bÐ�t��*V���A#��R�G�
�@�������
�C���~�"�:�l)=r�"��pUoO�p�Bo���/�O����k���OC��x��JJaOZV��F"�a��K�A��뗫G�cl� KK� �[�E`���!�d��Є��"�bȆ��`P��˾�{��F�u09����4N���^�� $�M"B����prosX���J7}�wR,��$':�7ɠYK��;@��Th�r���0V��o1hE^u���Ѯ2�<�]����tNP��|2�!�;�ޔ��-�Ɠ��� M�|�!�ݧ�]�]2����I(!Xj,�)?�-O�Y�63��sL�S�� dsu_��<r���Ƌ�c]�&��H�3۽�����͠kPP#�Ϡj�hJ�
�𛦒�8dF�X��1;�J�Q8J��F�tĉO$c~��v�c$`�m"�;�-�X�3����HC,W/�?���n�_�dp�{�*����_ҕg��E�m��<����F��T��ԏ�v&����Ֆ�'�(��iI�2%{�"��i������#����Oݖ���A��1�5Χ�C�_ۼkx2h�b���fgsCB<�����Zw�]�~�����l�m���R��m�_�ӥ1�1���z ���_Ai��=P@x<}�4��C}�߃%1_�>�p���H�������?����t�J�c�L � �?�¡��y��;�pMiKtD$DQW,	V��Y�i�m����wSKJ�F��L��o�޷�������'�����s�$�w
}�      !   {
  x�UX�v�H]?}�v�<'��%� !��PJ�9�	 "-�������~���P�L�o�/l�3#���$rUV"7lr~����`.J��4:�,!�a�0�4�e�#'!����D��0��L���(�1 gpԙ0��,��VЈ�@�(�N�=9Ա&��X��������(��C� �,Y�=�;|w�Y�S�U!2^�~i�A3��&��P�a�5�$�Dh3�g��fT�|�.Ұ�4Nh,N�,J��xΨ
.���(?f� ˓a[4�+�4l��O4��(j��]FGU��K�-#�&�G���/��8��n�0���:S/P܆.P	{-�x�G��ް��#��U v���~��-�F��4.ěʌ�M@U�<�UU��-V������^��T��jt`B�Mu.�9eK���с5��Ύ��݁A3��j�3Qj��,�q���?��8����h0��ֹѽ����@ע��"͍,����?Ap=�O����h�4A�M�W����ԻL�n��)MN�`t{4Y�Se��O������>�u~4}���L�ؼ-i�D�H̘�;�`E���u_z��u�	���,���^��/����C�M�V3}�qYuȇ+�YH�^�&�����|��'Q�oFF�����{`˂&�����_��
i�`4/���nر�	�K��N�>����M�O�.�[4�i*�(���M���V;]W��wh�T�U���3�>���{�N���(�������=^/��Gn���9��vuH�r��RM!�^�r��G���"��=�.�e��,rSr����6�|����k3��T~3�������s�.�h�~+cУ��y�A�f1�
��1�7�9�ո�C�>d�ή�,Y���;�Ⳋ�,��=yyb�lZ��n�?��sɓ�	73*��Wc�%oNމy�#oA��!��G�a����BJ�:����v��)㦠�#�"����ne�,8#��g%ς;5��)�ƨC^H�������1V��1�ZO�]Y�Q��)�:�1B"4��84m,�t.�O�i�����Hi�mDդ�DU�TP�1�<�=�w��{��i^��:W@�	-��1ںG2�}���|7g� �th/,M��:����:W��uߥŔ���S�h�Y�����	��Ч���'��p���Ð��N3`��b	Q!d~��EJ�Jd0 l��h�aE��Cx�c��d�q��v+z�šY�Q0�@g�����o�o������]�e~�e����P;�xD~D�Fu�w�.��7��=��IaZ�?�_�"�@�����x}kt�th	R��1`�������-Ǵ�%���eX����i�v�la���OYa��r��Tɼ�$(��-S�S-�Y��嚖�_�RGHl
|�������?��<��Q�{��r!��+�J�tm� �l�*�bB@�ŹT�h����(�!���{
� Zw�}�^~�������bbHj���&�Z��IT͇���7_uU�	������Ç`�`�4�E���0�5wAA�1|(�I#)њB
H
��+@\���{S�"�*@M����1�U�P���5#W��$У0�P^��.���59�W��`��oAT�k��Ddm� Q�m�[)��q�
Q-����E�FT �B��e׀l+������)R�3���a<�`~��+\���@��V�Μ��ȧH<���Ί�3�D�%dɱ��@e��"�9�Ȧ��`fKo��mEO�7f�.E.E�Ί�a�Q��CQWR���P��R�`X}�p0o���W�'���á���=�+���MC0T���+�M�]ŏc�� ]���U^����:���L��.�+��`3ɓ<�o2_UU��B(_ �-'��e�o�@>�n��Uc��(������ۡH���\p�f��#ڼߺ���i���2c�:��cB�s�&|c�9�BLH�2�B4iVL`	�;��<5��%�Myݟd�ܠ�^b�����0y���.�)�)��П�kF�,ܼ|lP_2���F�9۠�d�y٠�-���}��!�'7�m�h���ogLd��U����"~�g��9�+�]�G�me.E��?{����� � &|`��@ɋ���6<4.��/���-%��r��������'H�WU���"�ቒ+Wm�φ�H�a��
��t��n#�.M�᷺ղ:M���o�a�u�x��J&66�Szﺂ�CjQ ���v�7��)�&^��A�l�Da�����R���0#:��M=J�Q�C���g�m���+@� �N)���A�>M�N4ǠH)��1L�ƀ�3	D��'uk0�6�4��&'Gt�Po��:5��k��Ǧ��ܵC�g~,C}�����cMHܳ�����8~_���x�x#�v�ɻ�cL3oh�z�����s]���ʮ8�E���h]�M�����-��v�=�`�͚6"ǔ����6��7�	L;�ӻi�1F�@כ�6
Ok�0������`�C�3z٫�����Јw���.�/''�uH{��ғ<sv�ʷm�7�*�>�V�wb�
�����J������0���-7         `  x�eX�V9}����&Yk:�U�?!@���NzMּȶb+�KnU�����yk���%t�0?4�0[RIe�`��J���-�d��h��f,!��Ͽ���	��B̒a���?�3�I�0�1�9�� ����~~�:Y� �$貉��h�,$C����h�H��J[�E\bg�,cj�aV�~�aE�b�� ��L�󡷟�0$j�1$��-រ�9/�h�T���#�X�f����-Zb�4�W�\���\����-��Ɗ	������Q̆<;��F��Ά2u��B��c�r���Q����';�QUcb�;�'�j��r�sՁ�I�΁�9j��q^���5ɢ�Ů�þ�e|+&�{�I,���<t�tYߏ�F#x-Spkl�\���-��C��H�Y��J�VA��wyV$��|�U�ؾ�tK��A�L��`-
�ٻ��W����gf�U�����5���<1UzyJ�p2W;�h����Nh��9�q��6������pab[mi�+)����j`�,���ZД�r���l/���D��%$1R1X�d�j�O�~,��Z���13�ݛ��� ��/�R�k$�{����꟰t��CS�5x)2^�s$X2z9�5=��ഌ�/��_iNˉT��pE��Z��ݨSZ�WR�<����D��E������x��ok����_5�$K��n�E�.)��4�~���Ϣ�MGz��b�=`~K���gӢ��u8���0�6��|"
k�=���l̃'��z��	S;�O^�F���,�2τ�i�ʉH
ߏ{�ȃOcdoT�2Hz�����Y��*;6k���h6�rJ����]7��$d�I���I �Vr�p��SS�YF�)��m��f�h�Ǧ;5+d99-�{���<?cN+�F%�s�Wڬ�7�xn8�������:y�X2���� � ���>��x�Mgْ�,���5����P��*�੣��d��m���RoU���zc��+�
�
�j$��i+�P�3V`U�2���ڪ��G#�Y��3ڪ����/qK[yNNMB��u���$f�EV�#<���OpC[mO�@�d|�b��=mÕ��|f�B<�|�F��6{�;״]-�_E���Yi��9��v��2a+�]�AV9S.u̺��kQ�t�b�n7ɪL��ub-��u���j���+g���6Y��3��ܯT�ڀ;:��r0$��q�5�HCҧЙ!9�Tɚ�'�	PX�i�7�h1S�d�c���*�c�]k����������[6aE�87���6��]��D5�bz�Ujtn��Jz+հ�3i���������I�<��cO^#�B�>�1�0)�`X���5-�O�k6�z��`�qPYPI�35���/��[�l0{�\�Z
!�6XVH�KӢBh�Aj�N� #����ҁT҆�;�zic �p�����3��~�3�0e����KK=4�F�;������(��|.��,��:����[�W�g(��kO8�@�hlV�ӕ�%TСص��ʲa��L����f� lz��C�
��z�Hk�&L*�8���+�zª�GAJ��r�p�-$N��h���+Kn�R�"�Ӏ��vr&�����n

����	>��*K�����#������ m:h ����ݢ�
�(��GʏF#a5������H��̠��5ӑ����q��$�}Mʰb�:�l"
�t]�P]� ��ɧ,v��e��#���Je��K,�Cw�^[��X��#g��\�k�M4�p_r0�*dS�� pb�r^d'4Ȧ��^�PBvlJ�I�;s�Q�NP�um��h��F��.A�[������P,ƨ�؎���2S4��{l��CMAż��������v����X�4�g΍-1�@<թ=���b�O���ș-lj��B	5�Ŧ��&��<�n,m�3[��CQ��2[\�]�sh�-�u1�b��Pw2["�����|c���eCn@�l��|dS�ƖT�N�LjY-�i��V�o�#�m�'¶�[�A��m9qE~ki�l��ӴĐ�-۸�=�!\�L�Wy���~g݃x��u�e���o�]�pb���e�E�C�XÖ@иU�$c�c�L�ı�>�A�Ջ@�V9������_p%G&�|bw`Ʌ�V���4��ߗ.G��F������P�ټN�c ۃ�2���z��@X1vg�����C,(V��;*ȣ��e6�w�0(�.W�2*zup�g8[wכּ�B]�68z��hWAn}l�
v�)����+@��e^��<w�}GL�Mz����Р���δ����o����W`=Ȼ���+@��xq!֖���*�Z�IlP6
ӓ�t�o���2��|Aiu���q�/%����TԎ�����h�����n���ZP[�]����y�֤Č���s�/{��(�;��#���r��10�'�}{Thá����;S%y? 5H��=��{S��Y�}e��/���컲�/v�&�1���/:�E������
�A�������n��^��{K!t[�_a�j�A1d����r�{��UZ��`�ڱ"����1��7��,Mc��g	Z��7eA��r��o�;�6y?r���zm�~G?�q"'!��'"�CS���D@cp�����"7b%7�����+l��}�`���{bB�K�
��Y<�<�~<Xo�߫ܝF6!�	���y�f�,��/w��``f^"�D6�+/Vqq���tC��m��i�9�B~<K���t����u�(�����B����]?@�;��W�Wa��&���Ѵ�"�W��Zgt���?N�b�%��'��~;n���=r��LBH~�>��q�>�����EG�y         A   x��1� D�z�a������Bbb����LV���Aұ�h�Ĭ҉�{Viت']gm�o~F�
I         �   x��;n�@D��)rBܟv�8p�.������ڐ6�s�0*��ϟ�o�V����r8m�[W��1���צp�8���s����(;Dv1���R"
'J�6mNXhķ>���ٱ�F��1?6�m1���
�V�r��t�ˎ�#B�L2`꺾M�}���D��_0!     