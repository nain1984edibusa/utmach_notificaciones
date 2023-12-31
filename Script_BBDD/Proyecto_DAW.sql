PGDMP         :    	            {            Proyecto_DAW    15.4    15.4 1    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    16514    Proyecto_DAW    DATABASE     �   CREATE DATABASE "Proyecto_DAW" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE "Proyecto_DAW";
                postgres    false            �            1259    16525    destinatarios    TABLE       CREATE TABLE public.destinatarios (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    email character varying(255),
    telefono character varying(20),
    estado integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 !   DROP TABLE public.destinatarios;
       public         heap    postgres    false            �            1259    16524    destinatarios_id_seq    SEQUENCE     }   CREATE SEQUENCE public.destinatarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.destinatarios_id_seq;
       public          postgres    false    217            3           0    0    destinatarios_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.destinatarios_id_seq OWNED BY public.destinatarios.id;
          public          postgres    false    216            �            1259    16516    eventos    TABLE     �   CREATE TABLE public.eventos (
    id bigint NOT NULL,
    descripcion character varying(255) NOT NULL,
    origen character varying(255),
    created_at timestamp with time zone,
    updsated_at timestamp with time zone
);
    DROP TABLE public.eventos;
       public         heap    postgres    false            �            1259    16515    eventos_id_seq    SEQUENCE     w   CREATE SEQUENCE public.eventos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.eventos_id_seq;
       public          postgres    false    215            4           0    0    eventos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.eventos_id_seq OWNED BY public.eventos.id;
          public          postgres    false    214            �            1259    16534    mensajes    TABLE     �   CREATE TABLE public.mensajes (
    id bigint NOT NULL,
    contenido character varying(255) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.mensajes;
       public         heap    postgres    false            �            1259    16533    mensajes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.mensajes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mensajes_id_seq;
       public          postgres    false    219            5           0    0    mensajes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mensajes_id_seq OWNED BY public.mensajes.id;
          public          postgres    false    218            �            1259    16576    notificaciones    TABLE     =  CREATE TABLE public.notificaciones (
    id bigint NOT NULL,
    idmensaje bigint NOT NULL,
    iddestinatario bigint NOT NULL,
    telefono character varying(20) NOT NULL,
    fec_envio timestamp with time zone,
    estado integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 "   DROP TABLE public.notificaciones;
       public         heap    postgres    false            �            1259    16575    notificaciones_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.notificaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.notificaciones_id_seq;
       public          postgres    false    225            6           0    0    notificaciones_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.notificaciones_id_seq OWNED BY public.notificaciones.id;
          public          postgres    false    224            �            1259    16541 
   plantillas    TABLE     �   CREATE TABLE public.plantillas (
    id bigint NOT NULL,
    idevento bigint NOT NULL,
    contenido character varying(255) NOT NULL,
    estado integer,
    created_at timestamp with time zone[],
    updated_at timestamp with time zone
);
    DROP TABLE public.plantillas;
       public         heap    postgres    false            �            1259    16540    plantillas_id_seq    SEQUENCE     z   CREATE SEQUENCE public.plantillas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.plantillas_id_seq;
       public          postgres    false    221            7           0    0    plantillas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.plantillas_id_seq OWNED BY public.plantillas.id;
          public          postgres    false    220            �            1259    16569 	   variables    TABLE     �   CREATE TABLE public.variables (
    id bigint NOT NULL,
    idplantilla bigint NOT NULL,
    descripcion character varying(255),
    estado integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.variables;
       public         heap    postgres    false            �            1259    16568    variables_id_seq    SEQUENCE     y   CREATE SEQUENCE public.variables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.variables_id_seq;
       public          postgres    false    223            8           0    0    variables_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.variables_id_seq OWNED BY public.variables.id;
          public          postgres    false    222                       2604    16528    destinatarios id    DEFAULT     t   ALTER TABLE ONLY public.destinatarios ALTER COLUMN id SET DEFAULT nextval('public.destinatarios_id_seq'::regclass);
 ?   ALTER TABLE public.destinatarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ~           2604    16519 
   eventos id    DEFAULT     h   ALTER TABLE ONLY public.eventos ALTER COLUMN id SET DEFAULT nextval('public.eventos_id_seq'::regclass);
 9   ALTER TABLE public.eventos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16537    mensajes id    DEFAULT     j   ALTER TABLE ONLY public.mensajes ALTER COLUMN id SET DEFAULT nextval('public.mensajes_id_seq'::regclass);
 :   ALTER TABLE public.mensajes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16579    notificaciones id    DEFAULT     v   ALTER TABLE ONLY public.notificaciones ALTER COLUMN id SET DEFAULT nextval('public.notificaciones_id_seq'::regclass);
 @   ALTER TABLE public.notificaciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16544    plantillas id    DEFAULT     n   ALTER TABLE ONLY public.plantillas ALTER COLUMN id SET DEFAULT nextval('public.plantillas_id_seq'::regclass);
 <   ALTER TABLE public.plantillas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16572    variables id    DEFAULT     l   ALTER TABLE ONLY public.variables ALTER COLUMN id SET DEFAULT nextval('public.variables_id_seq'::regclass);
 ;   ALTER TABLE public.variables ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            $          0    16525    destinatarios 
   TABLE DATA           d   COPY public.destinatarios (id, nombre, email, telefono, estado, created_at, updated_at) FROM stdin;
    public          postgres    false    217   c8       "          0    16516    eventos 
   TABLE DATA           S   COPY public.eventos (id, descripcion, origen, created_at, updsated_at) FROM stdin;
    public          postgres    false    215   �8       &          0    16534    mensajes 
   TABLE DATA           I   COPY public.mensajes (id, contenido, created_at, updated_at) FROM stdin;
    public          postgres    false    219   �8       ,          0    16576    notificaciones 
   TABLE DATA           |   COPY public.notificaciones (id, idmensaje, iddestinatario, telefono, fec_envio, estado, created_at, updated_at) FROM stdin;
    public          postgres    false    225   �8       (          0    16541 
   plantillas 
   TABLE DATA           ]   COPY public.plantillas (id, idevento, contenido, estado, created_at, updated_at) FROM stdin;
    public          postgres    false    221   �8       *          0    16569 	   variables 
   TABLE DATA           a   COPY public.variables (id, idplantilla, descripcion, estado, created_at, updated_at) FROM stdin;
    public          postgres    false    223   �8       9           0    0    destinatarios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.destinatarios_id_seq', 1, false);
          public          postgres    false    216            :           0    0    eventos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.eventos_id_seq', 1, false);
          public          postgres    false    214            ;           0    0    mensajes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mensajes_id_seq', 1, false);
          public          postgres    false    218            <           0    0    notificaciones_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.notificaciones_id_seq', 1, false);
          public          postgres    false    224            =           0    0    plantillas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.plantillas_id_seq', 1, false);
          public          postgres    false    220            >           0    0    variables_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.variables_id_seq', 1, false);
          public          postgres    false    222            �           2606    16532     destinatarios destinatarios_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.destinatarios
    ADD CONSTRAINT destinatarios_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.destinatarios DROP CONSTRAINT destinatarios_pkey;
       public            postgres    false    217            �           2606    16523    eventos eventos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.eventos DROP CONSTRAINT eventos_pkey;
       public            postgres    false    215            �           2606    16539    mensajes mensajes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.mensajes
    ADD CONSTRAINT mensajes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.mensajes DROP CONSTRAINT mensajes_pkey;
       public            postgres    false    219            �           2606    16581 "   notificaciones notificaciones_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_pkey PRIMARY KEY (idmensaje);
 L   ALTER TABLE ONLY public.notificaciones DROP CONSTRAINT notificaciones_pkey;
       public            postgres    false    225            �           2606    16548    plantillas plantillas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.plantillas
    ADD CONSTRAINT plantillas_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.plantillas DROP CONSTRAINT plantillas_pkey;
       public            postgres    false    221            �           2606    16574    variables variables_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.variables
    ADD CONSTRAINT variables_pkey PRIMARY KEY (idplantilla);
 B   ALTER TABLE ONLY public.variables DROP CONSTRAINT variables_pkey;
       public            postgres    false    223            �           2606    16587 .   notificaciones fk_notificaciones_destinatarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT fk_notificaciones_destinatarios FOREIGN KEY (iddestinatario) REFERENCES public.destinatarios(id) NOT VALID;
 X   ALTER TABLE ONLY public.notificaciones DROP CONSTRAINT fk_notificaciones_destinatarios;
       public          postgres    false    217    225    3207            �           2606    16582 )   notificaciones fk_notificaciones_mensajes    FK CONSTRAINT     �   ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT fk_notificaciones_mensajes FOREIGN KEY (idmensaje) REFERENCES public.mensajes(id) NOT VALID;
 S   ALTER TABLE ONLY public.notificaciones DROP CONSTRAINT fk_notificaciones_mensajes;
       public          postgres    false    225    219    3209            �           2606    16563     plantillas fk_plantillas_eventos    FK CONSTRAINT     �   ALTER TABLE ONLY public.plantillas
    ADD CONSTRAINT fk_plantillas_eventos FOREIGN KEY (idevento) REFERENCES public.eventos(id) NOT VALID;
 J   ALTER TABLE ONLY public.plantillas DROP CONSTRAINT fk_plantillas_eventos;
       public          postgres    false    221    3205    215            $      x������ � �      "      x������ � �      &      x������ � �      ,      x������ � �      (      x������ � �      *      x������ � �     