PGDMP     /                	    x           docker    9.3.17    12.4 �   
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16385    docker    DATABASE     p   CREATE DATABASE docker WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE docker;
                docker    false            	            2615    24989    ellibra    SCHEMA        CREATE SCHEMA ellibra;
    DROP SCHEMA ellibra;
                docker    false                        2615    24599    lacentro    SCHEMA        CREATE SCHEMA lacentro;
    DROP SCHEMA lacentro;
                docker    false            
           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    25021 
   auth_group    TABLE     g   CREATE TABLE ellibra.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE ellibra.auth_group;
       ellibra            docker    false    9            �            1259    25019    auth_group_id_seq    SEQUENCE     {   CREATE SEQUENCE ellibra.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE ellibra.auth_group_id_seq;
       ellibra          docker    false    223    9            
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE ellibra.auth_group_id_seq OWNED BY ellibra.auth_group.id;
          ellibra          docker    false    222            �            1259    25031    auth_group_permissions    TABLE     �   CREATE TABLE ellibra.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 +   DROP TABLE ellibra.auth_group_permissions;
       ellibra            docker    false    9            �            1259    25029    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE ellibra.auth_group_permissions_id_seq;
       ellibra          docker    false    9    225            
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE ellibra.auth_group_permissions_id_seq OWNED BY ellibra.auth_group_permissions.id;
          ellibra          docker    false    224            �            1259    25013    auth_permission    TABLE     �   CREATE TABLE ellibra.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 $   DROP TABLE ellibra.auth_permission;
       ellibra            docker    false    9            �            1259    25011    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE ellibra.auth_permission_id_seq;
       ellibra          docker    false    221    9            
           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE ellibra.auth_permission_id_seq OWNED BY ellibra.auth_permission.id;
          ellibra          docker    false    220            �            1259    25123    django_admin_log    TABLE     �  CREATE TABLE ellibra.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 %   DROP TABLE ellibra.django_admin_log;
       ellibra            docker    false    9            �            1259    25121    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE ellibra.django_admin_log_id_seq;
       ellibra          docker    false    233    9            
           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE ellibra.django_admin_log_id_seq OWNED BY ellibra.django_admin_log.id;
          ellibra          docker    false    232            �            1259    25003    django_content_type    TABLE     �   CREATE TABLE ellibra.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 (   DROP TABLE ellibra.django_content_type;
       ellibra            docker    false    9            �            1259    25001    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE ellibra.django_content_type_id_seq;
       ellibra          docker    false    9    219            
           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE ellibra.django_content_type_id_seq OWNED BY ellibra.django_content_type.id;
          ellibra          docker    false    218            �            1259    24992    django_migrations    TABLE     �   CREATE TABLE ellibra.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 &   DROP TABLE ellibra.django_migrations;
       ellibra            docker    false    9            �            1259    24990    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE ellibra.django_migrations_id_seq;
       ellibra          docker    false    9    217            
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE ellibra.django_migrations_id_seq OWNED BY ellibra.django_migrations.id;
          ellibra          docker    false    216            �            1259    25369    django_session    TABLE     �   CREATE TABLE ellibra.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 #   DROP TABLE ellibra.django_session;
       ellibra            docker    false    9            �            1259    25147    inventary_category    TABLE       CREATE TABLE ellibra.inventary_category (
    id integer NOT NULL,
    name text,
    publish boolean,
    publish_date timestamp with time zone,
    creation_date timestamp with time zone,
    modification_date timestamp with time zone,
    unpublish_date timestamp with time zone
);
 '   DROP TABLE ellibra.inventary_category;
       ellibra            docker    false    9            �            1259    25145    inventary_category_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.inventary_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE ellibra.inventary_category_id_seq;
       ellibra          docker    false    9    235            
           0    0    inventary_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE ellibra.inventary_category_id_seq OWNED BY ellibra.inventary_category.id;
          ellibra          docker    false    234            �            1259    25158    inventary_mesa    TABLE     a   CREATE TABLE ellibra.inventary_mesa (
    id integer NOT NULL,
    name character varying(50)
);
 #   DROP TABLE ellibra.inventary_mesa;
       ellibra            docker    false    9            �            1259    25156    inventary_mesa_id_seq    SEQUENCE        CREATE SEQUENCE ellibra.inventary_mesa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE ellibra.inventary_mesa_id_seq;
       ellibra          docker    false    237    9            
           0    0    inventary_mesa_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE ellibra.inventary_mesa_id_seq OWNED BY ellibra.inventary_mesa.id;
          ellibra          docker    false    236            �            1259    25166    inventary_orders    TABLE     �   CREATE TABLE ellibra.inventary_orders (
    id integer NOT NULL,
    creation_date timestamp with time zone,
    orders_status_cocina boolean,
    orders_status_barra boolean,
    mesa_id integer,
    user_id integer
);
 %   DROP TABLE ellibra.inventary_orders;
       ellibra            docker    false    9            �            1259    25164    inventary_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.inventary_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE ellibra.inventary_orders_id_seq;
       ellibra          docker    false    239    9            
           0    0    inventary_orders_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE ellibra.inventary_orders_id_seq OWNED BY ellibra.inventary_orders.id;
          ellibra          docker    false    238            �            1259    25193    inventary_ordersproducts    TABLE     �   CREATE TABLE ellibra.inventary_ordersproducts (
    id integer NOT NULL,
    creation_date timestamp with time zone,
    order_product_id integer,
    product_id integer
);
 -   DROP TABLE ellibra.inventary_ordersproducts;
       ellibra            docker    false    9            �            1259    25191    inventary_ordersproducts_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.inventary_ordersproducts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE ellibra.inventary_ordersproducts_id_seq;
       ellibra          docker    false    245    9            
           0    0    inventary_ordersproducts_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE ellibra.inventary_ordersproducts_id_seq OWNED BY ellibra.inventary_ordersproducts.id;
          ellibra          docker    false    244            �            1259    25174    inventary_preparationsite    TABLE     l   CREATE TABLE ellibra.inventary_preparationsite (
    id integer NOT NULL,
    name character varying(50)
);
 .   DROP TABLE ellibra.inventary_preparationsite;
       ellibra            docker    false    9            �            1259    25172     inventary_preparationsite_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.inventary_preparationsite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE ellibra.inventary_preparationsite_id_seq;
       ellibra          docker    false    241    9            
           0    0     inventary_preparationsite_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE ellibra.inventary_preparationsite_id_seq OWNED BY ellibra.inventary_preparationsite.id;
          ellibra          docker    false    240            �            1259    25182    inventary_product    TABLE     �  CREATE TABLE ellibra.inventary_product (
    id integer NOT NULL,
    name character varying(50),
    image text,
    description text,
    allergy text,
    price numeric(10,2),
    publish boolean,
    publish_date timestamp with time zone,
    creation_date timestamp with time zone,
    modification_date timestamp with time zone,
    unpublish_date timestamp with time zone,
    category_id integer,
    preparation_site_id integer
);
 &   DROP TABLE ellibra.inventary_product;
       ellibra            docker    false    9            �            1259    25180    inventary_product_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.inventary_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE ellibra.inventary_product_id_seq;
       ellibra          docker    false    243    9            
           0    0    inventary_product_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE ellibra.inventary_product_id_seq OWNED BY ellibra.inventary_product.id;
          ellibra          docker    false    242            �            1259    25250    oauth2_provider_accesstoken    TABLE     r  CREATE TABLE ellibra.oauth2_provider_accesstoken (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id bigint,
    user_id integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    source_refresh_token_id bigint
);
 0   DROP TABLE ellibra.oauth2_provider_accesstoken;
       ellibra            docker    false    9            �            1259    25248 "   oauth2_provider_accesstoken_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE ellibra.oauth2_provider_accesstoken_id_seq;
       ellibra          docker    false    9    249            
           0    0 "   oauth2_provider_accesstoken_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE ellibra.oauth2_provider_accesstoken_id_seq OWNED BY ellibra.oauth2_provider_accesstoken.id;
          ellibra          docker    false    248            �            1259    25237    oauth2_provider_application    TABLE       CREATE TABLE ellibra.oauth2_provider_application (
    id bigint NOT NULL,
    client_id character varying(100) NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer,
    skip_authorization boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 0   DROP TABLE ellibra.oauth2_provider_application;
       ellibra            docker    false    9            �            1259    25235 "   oauth2_provider_application_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE ellibra.oauth2_provider_application_id_seq;
       ellibra          docker    false    9    247            
           0    0 "   oauth2_provider_application_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE ellibra.oauth2_provider_application_id_seq OWNED BY ellibra.oauth2_provider_application.id;
          ellibra          docker    false    246            �            1259    25263    oauth2_provider_grant    TABLE     �  CREATE TABLE ellibra.oauth2_provider_grant (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    scope text NOT NULL,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    code_challenge character varying(128) NOT NULL,
    code_challenge_method character varying(10) NOT NULL
);
 *   DROP TABLE ellibra.oauth2_provider_grant;
       ellibra            docker    false    9            �            1259    25261    oauth2_provider_grant_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE ellibra.oauth2_provider_grant_id_seq;
       ellibra          docker    false    9    251             
           0    0    oauth2_provider_grant_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE ellibra.oauth2_provider_grant_id_seq OWNED BY ellibra.oauth2_provider_grant.id;
          ellibra          docker    false    250            �            1259    25276    oauth2_provider_refreshtoken    TABLE     [  CREATE TABLE ellibra.oauth2_provider_refreshtoken (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id bigint,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    revoked timestamp with time zone
);
 1   DROP TABLE ellibra.oauth2_provider_refreshtoken;
       ellibra            docker    false    9            �            1259    25274 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE ellibra.oauth2_provider_refreshtoken_id_seq;
       ellibra          docker    false    9    253            !
           0    0 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE ellibra.oauth2_provider_refreshtoken_id_seq OWNED BY ellibra.oauth2_provider_refreshtoken.id;
          ellibra          docker    false    252            �            1259    25065    users_usermodel    TABLE       CREATE TABLE ellibra.users_usermodel (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    date_of_birth date,
    image text
);
 $   DROP TABLE ellibra.users_usermodel;
       ellibra            docker    false    9            �            1259    25078    users_usermodel_groups    TABLE     �   CREATE TABLE ellibra.users_usermodel_groups (
    id integer NOT NULL,
    usermodel_id integer NOT NULL,
    group_id integer NOT NULL
);
 +   DROP TABLE ellibra.users_usermodel_groups;
       ellibra            docker    false    9            �            1259    25076    users_usermodel_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.users_usermodel_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE ellibra.users_usermodel_groups_id_seq;
       ellibra          docker    false    229    9            "
           0    0    users_usermodel_groups_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE ellibra.users_usermodel_groups_id_seq OWNED BY ellibra.users_usermodel_groups.id;
          ellibra          docker    false    228            �            1259    25063    users_usermodel_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.users_usermodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE ellibra.users_usermodel_id_seq;
       ellibra          docker    false    227    9            #
           0    0    users_usermodel_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE ellibra.users_usermodel_id_seq OWNED BY ellibra.users_usermodel.id;
          ellibra          docker    false    226            �            1259    25086     users_usermodel_user_permissions    TABLE     �   CREATE TABLE ellibra.users_usermodel_user_permissions (
    id integer NOT NULL,
    usermodel_id integer NOT NULL,
    permission_id integer NOT NULL
);
 5   DROP TABLE ellibra.users_usermodel_user_permissions;
       ellibra            docker    false    9            �            1259    25084 '   users_usermodel_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE ellibra.users_usermodel_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE ellibra.users_usermodel_user_permissions_id_seq;
       ellibra          docker    false    231    9            $
           0    0 '   users_usermodel_user_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE ellibra.users_usermodel_user_permissions_id_seq OWNED BY ellibra.users_usermodel_user_permissions.id;
          ellibra          docker    false    230            �            1259    24631 
   auth_group    TABLE     h   CREATE TABLE lacentro.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
     DROP TABLE lacentro.auth_group;
       lacentro            docker    false    8            �            1259    24629    auth_group_id_seq    SEQUENCE     |   CREATE SEQUENCE lacentro.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE lacentro.auth_group_id_seq;
       lacentro          docker    false    184    8            %
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE lacentro.auth_group_id_seq OWNED BY lacentro.auth_group.id;
          lacentro          docker    false    183            �            1259    24641    auth_group_permissions    TABLE     �   CREATE TABLE lacentro.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 ,   DROP TABLE lacentro.auth_group_permissions;
       lacentro            docker    false    8            �            1259    24639    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE lacentro.auth_group_permissions_id_seq;
       lacentro          docker    false    186    8            &
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE lacentro.auth_group_permissions_id_seq OWNED BY lacentro.auth_group_permissions.id;
          lacentro          docker    false    185            �            1259    24623    auth_permission    TABLE     �   CREATE TABLE lacentro.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 %   DROP TABLE lacentro.auth_permission;
       lacentro            docker    false    8            �            1259    24621    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE lacentro.auth_permission_id_seq;
       lacentro          docker    false    182    8            '
           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE lacentro.auth_permission_id_seq OWNED BY lacentro.auth_permission.id;
          lacentro          docker    false    181            �            1259    24733    django_admin_log    TABLE     �  CREATE TABLE lacentro.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 &   DROP TABLE lacentro.django_admin_log;
       lacentro            docker    false    8            �            1259    24731    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE lacentro.django_admin_log_id_seq;
       lacentro          docker    false    194    8            (
           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE lacentro.django_admin_log_id_seq OWNED BY lacentro.django_admin_log.id;
          lacentro          docker    false    193            �            1259    24613    django_content_type    TABLE     �   CREATE TABLE lacentro.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 )   DROP TABLE lacentro.django_content_type;
       lacentro            docker    false    8            �            1259    24611    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE lacentro.django_content_type_id_seq;
       lacentro          docker    false    8    180            )
           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE lacentro.django_content_type_id_seq OWNED BY lacentro.django_content_type.id;
          lacentro          docker    false    179            �            1259    24602    django_migrations    TABLE     �   CREATE TABLE lacentro.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 '   DROP TABLE lacentro.django_migrations;
       lacentro            docker    false    8            �            1259    24600    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE lacentro.django_migrations_id_seq;
       lacentro          docker    false    8    178            *
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE lacentro.django_migrations_id_seq OWNED BY lacentro.django_migrations.id;
          lacentro          docker    false    177            �            1259    24979    django_session    TABLE     �   CREATE TABLE lacentro.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE lacentro.django_session;
       lacentro            docker    false    8            �            1259    24757    inventary_category    TABLE       CREATE TABLE lacentro.inventary_category (
    id integer NOT NULL,
    name text,
    publish boolean,
    publish_date timestamp with time zone,
    creation_date timestamp with time zone,
    modification_date timestamp with time zone,
    unpublish_date timestamp with time zone
);
 (   DROP TABLE lacentro.inventary_category;
       lacentro            docker    false    8            �            1259    24755    inventary_category_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.inventary_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE lacentro.inventary_category_id_seq;
       lacentro          docker    false    8    196            +
           0    0    inventary_category_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE lacentro.inventary_category_id_seq OWNED BY lacentro.inventary_category.id;
          lacentro          docker    false    195            �            1259    24768    inventary_mesa    TABLE     b   CREATE TABLE lacentro.inventary_mesa (
    id integer NOT NULL,
    name character varying(50)
);
 $   DROP TABLE lacentro.inventary_mesa;
       lacentro            docker    false    8            �            1259    24766    inventary_mesa_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.inventary_mesa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE lacentro.inventary_mesa_id_seq;
       lacentro          docker    false    198    8            ,
           0    0    inventary_mesa_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE lacentro.inventary_mesa_id_seq OWNED BY lacentro.inventary_mesa.id;
          lacentro          docker    false    197            �            1259    24776    inventary_orders    TABLE     �   CREATE TABLE lacentro.inventary_orders (
    id integer NOT NULL,
    creation_date timestamp with time zone,
    orders_status_cocina boolean,
    orders_status_barra boolean,
    mesa_id integer,
    user_id integer
);
 &   DROP TABLE lacentro.inventary_orders;
       lacentro            docker    false    8            �            1259    24774    inventary_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.inventary_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE lacentro.inventary_orders_id_seq;
       lacentro          docker    false    200    8            -
           0    0    inventary_orders_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE lacentro.inventary_orders_id_seq OWNED BY lacentro.inventary_orders.id;
          lacentro          docker    false    199            �            1259    24803    inventary_ordersproducts    TABLE     �   CREATE TABLE lacentro.inventary_ordersproducts (
    id integer NOT NULL,
    creation_date timestamp with time zone,
    order_product_id integer,
    product_id integer
);
 .   DROP TABLE lacentro.inventary_ordersproducts;
       lacentro            docker    false    8            �            1259    24801    inventary_ordersproducts_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.inventary_ordersproducts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE lacentro.inventary_ordersproducts_id_seq;
       lacentro          docker    false    8    206            .
           0    0    inventary_ordersproducts_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE lacentro.inventary_ordersproducts_id_seq OWNED BY lacentro.inventary_ordersproducts.id;
          lacentro          docker    false    205            �            1259    24784    inventary_preparationsite    TABLE     m   CREATE TABLE lacentro.inventary_preparationsite (
    id integer NOT NULL,
    name character varying(50)
);
 /   DROP TABLE lacentro.inventary_preparationsite;
       lacentro            docker    false    8            �            1259    24782     inventary_preparationsite_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.inventary_preparationsite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE lacentro.inventary_preparationsite_id_seq;
       lacentro          docker    false    8    202            /
           0    0     inventary_preparationsite_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE lacentro.inventary_preparationsite_id_seq OWNED BY lacentro.inventary_preparationsite.id;
          lacentro          docker    false    201            �            1259    24792    inventary_product    TABLE     �  CREATE TABLE lacentro.inventary_product (
    id integer NOT NULL,
    name character varying(50),
    image text,
    description text,
    allergy text,
    price numeric(10,2),
    publish boolean,
    publish_date timestamp with time zone,
    creation_date timestamp with time zone,
    modification_date timestamp with time zone,
    unpublish_date timestamp with time zone,
    category_id integer,
    preparation_site_id integer
);
 '   DROP TABLE lacentro.inventary_product;
       lacentro            docker    false    8            �            1259    24790    inventary_product_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.inventary_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE lacentro.inventary_product_id_seq;
       lacentro          docker    false    204    8            0
           0    0    inventary_product_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE lacentro.inventary_product_id_seq OWNED BY lacentro.inventary_product.id;
          lacentro          docker    false    203            �            1259    24860    oauth2_provider_accesstoken    TABLE     s  CREATE TABLE lacentro.oauth2_provider_accesstoken (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id bigint,
    user_id integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    source_refresh_token_id bigint
);
 1   DROP TABLE lacentro.oauth2_provider_accesstoken;
       lacentro            docker    false    8            �            1259    24858 "   oauth2_provider_accesstoken_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE lacentro.oauth2_provider_accesstoken_id_seq;
       lacentro          docker    false    210    8            1
           0    0 "   oauth2_provider_accesstoken_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE lacentro.oauth2_provider_accesstoken_id_seq OWNED BY lacentro.oauth2_provider_accesstoken.id;
          lacentro          docker    false    209            �            1259    24847    oauth2_provider_application    TABLE       CREATE TABLE lacentro.oauth2_provider_application (
    id bigint NOT NULL,
    client_id character varying(100) NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer,
    skip_authorization boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 1   DROP TABLE lacentro.oauth2_provider_application;
       lacentro            docker    false    8            �            1259    24845 "   oauth2_provider_application_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE lacentro.oauth2_provider_application_id_seq;
       lacentro          docker    false    208    8            2
           0    0 "   oauth2_provider_application_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE lacentro.oauth2_provider_application_id_seq OWNED BY lacentro.oauth2_provider_application.id;
          lacentro          docker    false    207            �            1259    24873    oauth2_provider_grant    TABLE     �  CREATE TABLE lacentro.oauth2_provider_grant (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    scope text NOT NULL,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    code_challenge character varying(128) NOT NULL,
    code_challenge_method character varying(10) NOT NULL
);
 +   DROP TABLE lacentro.oauth2_provider_grant;
       lacentro            docker    false    8            �            1259    24871    oauth2_provider_grant_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE lacentro.oauth2_provider_grant_id_seq;
       lacentro          docker    false    8    212            3
           0    0    oauth2_provider_grant_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE lacentro.oauth2_provider_grant_id_seq OWNED BY lacentro.oauth2_provider_grant.id;
          lacentro          docker    false    211            �            1259    24886    oauth2_provider_refreshtoken    TABLE     \  CREATE TABLE lacentro.oauth2_provider_refreshtoken (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id bigint,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    revoked timestamp with time zone
);
 2   DROP TABLE lacentro.oauth2_provider_refreshtoken;
       lacentro            docker    false    8            �            1259    24884 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE lacentro.oauth2_provider_refreshtoken_id_seq;
       lacentro          docker    false    8    214            4
           0    0 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE lacentro.oauth2_provider_refreshtoken_id_seq OWNED BY lacentro.oauth2_provider_refreshtoken.id;
          lacentro          docker    false    213            �            1259    24675    users_usermodel    TABLE       CREATE TABLE lacentro.users_usermodel (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    date_of_birth date,
    image text
);
 %   DROP TABLE lacentro.users_usermodel;
       lacentro            docker    false    8            �            1259    24688    users_usermodel_groups    TABLE     �   CREATE TABLE lacentro.users_usermodel_groups (
    id integer NOT NULL,
    usermodel_id integer NOT NULL,
    group_id integer NOT NULL
);
 ,   DROP TABLE lacentro.users_usermodel_groups;
       lacentro            docker    false    8            �            1259    24686    users_usermodel_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.users_usermodel_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE lacentro.users_usermodel_groups_id_seq;
       lacentro          docker    false    190    8            5
           0    0    users_usermodel_groups_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE lacentro.users_usermodel_groups_id_seq OWNED BY lacentro.users_usermodel_groups.id;
          lacentro          docker    false    189            �            1259    24673    users_usermodel_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.users_usermodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE lacentro.users_usermodel_id_seq;
       lacentro          docker    false    8    188            6
           0    0    users_usermodel_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE lacentro.users_usermodel_id_seq OWNED BY lacentro.users_usermodel.id;
          lacentro          docker    false    187            �            1259    24696     users_usermodel_user_permissions    TABLE     �   CREATE TABLE lacentro.users_usermodel_user_permissions (
    id integer NOT NULL,
    usermodel_id integer NOT NULL,
    permission_id integer NOT NULL
);
 6   DROP TABLE lacentro.users_usermodel_user_permissions;
       lacentro            docker    false    8            �            1259    24694 '   users_usermodel_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE lacentro.users_usermodel_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE lacentro.users_usermodel_user_permissions_id_seq;
       lacentro          docker    false    192    8            7
           0    0 '   users_usermodel_user_permissions_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE lacentro.users_usermodel_user_permissions_id_seq OWNED BY lacentro.users_usermodel_user_permissions.id;
          lacentro          docker    false    191            �            1259    24589    customers_client    TABLE     '  CREATE TABLE public.customers_client (
    id integer NOT NULL,
    domain_url character varying(128) NOT NULL,
    schema_name character varying(63) NOT NULL,
    name character varying(100) NOT NULL,
    paid_until date NOT NULL,
    on_trial boolean NOT NULL,
    created_on date NOT NULL
);
 $   DROP TABLE public.customers_client;
       public            docker    false            �            1259    24587    customers_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.customers_client_id_seq;
       public          docker    false    176            8
           0    0    customers_client_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.customers_client_id_seq OWNED BY public.customers_client.id;
          public          docker    false    175            �            1259    24578    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            docker    false            �            1259    24576    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          docker    false    174            9
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          docker    false    173            A           2604    25024    auth_group id    DEFAULT     p   ALTER TABLE ONLY ellibra.auth_group ALTER COLUMN id SET DEFAULT nextval('ellibra.auth_group_id_seq'::regclass);
 =   ALTER TABLE ellibra.auth_group ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    223    222    223            B           2604    25034    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY ellibra.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('ellibra.auth_group_permissions_id_seq'::regclass);
 I   ALTER TABLE ellibra.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    225    224    225            @           2604    25016    auth_permission id    DEFAULT     z   ALTER TABLE ONLY ellibra.auth_permission ALTER COLUMN id SET DEFAULT nextval('ellibra.auth_permission_id_seq'::regclass);
 B   ALTER TABLE ellibra.auth_permission ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    220    221    221            F           2604    25126    django_admin_log id    DEFAULT     |   ALTER TABLE ONLY ellibra.django_admin_log ALTER COLUMN id SET DEFAULT nextval('ellibra.django_admin_log_id_seq'::regclass);
 C   ALTER TABLE ellibra.django_admin_log ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    233    232    233            ?           2604    25006    django_content_type id    DEFAULT     �   ALTER TABLE ONLY ellibra.django_content_type ALTER COLUMN id SET DEFAULT nextval('ellibra.django_content_type_id_seq'::regclass);
 F   ALTER TABLE ellibra.django_content_type ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    219    218    219            >           2604    24995    django_migrations id    DEFAULT     ~   ALTER TABLE ONLY ellibra.django_migrations ALTER COLUMN id SET DEFAULT nextval('ellibra.django_migrations_id_seq'::regclass);
 D   ALTER TABLE ellibra.django_migrations ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    216    217    217            H           2604    25150    inventary_category id    DEFAULT     �   ALTER TABLE ONLY ellibra.inventary_category ALTER COLUMN id SET DEFAULT nextval('ellibra.inventary_category_id_seq'::regclass);
 E   ALTER TABLE ellibra.inventary_category ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    234    235    235            I           2604    25161    inventary_mesa id    DEFAULT     x   ALTER TABLE ONLY ellibra.inventary_mesa ALTER COLUMN id SET DEFAULT nextval('ellibra.inventary_mesa_id_seq'::regclass);
 A   ALTER TABLE ellibra.inventary_mesa ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    237    236    237            J           2604    25169    inventary_orders id    DEFAULT     |   ALTER TABLE ONLY ellibra.inventary_orders ALTER COLUMN id SET DEFAULT nextval('ellibra.inventary_orders_id_seq'::regclass);
 C   ALTER TABLE ellibra.inventary_orders ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    238    239    239            M           2604    25196    inventary_ordersproducts id    DEFAULT     �   ALTER TABLE ONLY ellibra.inventary_ordersproducts ALTER COLUMN id SET DEFAULT nextval('ellibra.inventary_ordersproducts_id_seq'::regclass);
 K   ALTER TABLE ellibra.inventary_ordersproducts ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    244    245    245            K           2604    25177    inventary_preparationsite id    DEFAULT     �   ALTER TABLE ONLY ellibra.inventary_preparationsite ALTER COLUMN id SET DEFAULT nextval('ellibra.inventary_preparationsite_id_seq'::regclass);
 L   ALTER TABLE ellibra.inventary_preparationsite ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    240    241    241            L           2604    25185    inventary_product id    DEFAULT     ~   ALTER TABLE ONLY ellibra.inventary_product ALTER COLUMN id SET DEFAULT nextval('ellibra.inventary_product_id_seq'::regclass);
 D   ALTER TABLE ellibra.inventary_product ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    243    242    243            O           2604    25253    oauth2_provider_accesstoken id    DEFAULT     �   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken ALTER COLUMN id SET DEFAULT nextval('ellibra.oauth2_provider_accesstoken_id_seq'::regclass);
 N   ALTER TABLE ellibra.oauth2_provider_accesstoken ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    248    249    249            N           2604    25240    oauth2_provider_application id    DEFAULT     �   ALTER TABLE ONLY ellibra.oauth2_provider_application ALTER COLUMN id SET DEFAULT nextval('ellibra.oauth2_provider_application_id_seq'::regclass);
 N   ALTER TABLE ellibra.oauth2_provider_application ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    246    247    247            P           2604    25266    oauth2_provider_grant id    DEFAULT     �   ALTER TABLE ONLY ellibra.oauth2_provider_grant ALTER COLUMN id SET DEFAULT nextval('ellibra.oauth2_provider_grant_id_seq'::regclass);
 H   ALTER TABLE ellibra.oauth2_provider_grant ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    250    251    251            Q           2604    25279    oauth2_provider_refreshtoken id    DEFAULT     �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken ALTER COLUMN id SET DEFAULT nextval('ellibra.oauth2_provider_refreshtoken_id_seq'::regclass);
 O   ALTER TABLE ellibra.oauth2_provider_refreshtoken ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    253    252    253            C           2604    25068    users_usermodel id    DEFAULT     z   ALTER TABLE ONLY ellibra.users_usermodel ALTER COLUMN id SET DEFAULT nextval('ellibra.users_usermodel_id_seq'::regclass);
 B   ALTER TABLE ellibra.users_usermodel ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    227    226    227            D           2604    25081    users_usermodel_groups id    DEFAULT     �   ALTER TABLE ONLY ellibra.users_usermodel_groups ALTER COLUMN id SET DEFAULT nextval('ellibra.users_usermodel_groups_id_seq'::regclass);
 I   ALTER TABLE ellibra.users_usermodel_groups ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    229    228    229            E           2604    25089 #   users_usermodel_user_permissions id    DEFAULT     �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions ALTER COLUMN id SET DEFAULT nextval('ellibra.users_usermodel_user_permissions_id_seq'::regclass);
 S   ALTER TABLE ellibra.users_usermodel_user_permissions ALTER COLUMN id DROP DEFAULT;
       ellibra          docker    false    230    231    231            -           2604    24634    auth_group id    DEFAULT     r   ALTER TABLE ONLY lacentro.auth_group ALTER COLUMN id SET DEFAULT nextval('lacentro.auth_group_id_seq'::regclass);
 >   ALTER TABLE lacentro.auth_group ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    183    184    184            .           2604    24644    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY lacentro.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('lacentro.auth_group_permissions_id_seq'::regclass);
 J   ALTER TABLE lacentro.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    186    185    186            ,           2604    24626    auth_permission id    DEFAULT     |   ALTER TABLE ONLY lacentro.auth_permission ALTER COLUMN id SET DEFAULT nextval('lacentro.auth_permission_id_seq'::regclass);
 C   ALTER TABLE lacentro.auth_permission ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    182    181    182            2           2604    24736    django_admin_log id    DEFAULT     ~   ALTER TABLE ONLY lacentro.django_admin_log ALTER COLUMN id SET DEFAULT nextval('lacentro.django_admin_log_id_seq'::regclass);
 D   ALTER TABLE lacentro.django_admin_log ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    194    193    194            +           2604    24616    django_content_type id    DEFAULT     �   ALTER TABLE ONLY lacentro.django_content_type ALTER COLUMN id SET DEFAULT nextval('lacentro.django_content_type_id_seq'::regclass);
 G   ALTER TABLE lacentro.django_content_type ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    180    179    180            *           2604    24605    django_migrations id    DEFAULT     �   ALTER TABLE ONLY lacentro.django_migrations ALTER COLUMN id SET DEFAULT nextval('lacentro.django_migrations_id_seq'::regclass);
 E   ALTER TABLE lacentro.django_migrations ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    178    177    178            4           2604    24760    inventary_category id    DEFAULT     �   ALTER TABLE ONLY lacentro.inventary_category ALTER COLUMN id SET DEFAULT nextval('lacentro.inventary_category_id_seq'::regclass);
 F   ALTER TABLE lacentro.inventary_category ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    196    195    196            5           2604    24771    inventary_mesa id    DEFAULT     z   ALTER TABLE ONLY lacentro.inventary_mesa ALTER COLUMN id SET DEFAULT nextval('lacentro.inventary_mesa_id_seq'::regclass);
 B   ALTER TABLE lacentro.inventary_mesa ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    197    198    198            6           2604    24779    inventary_orders id    DEFAULT     ~   ALTER TABLE ONLY lacentro.inventary_orders ALTER COLUMN id SET DEFAULT nextval('lacentro.inventary_orders_id_seq'::regclass);
 D   ALTER TABLE lacentro.inventary_orders ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    200    199    200            9           2604    24806    inventary_ordersproducts id    DEFAULT     �   ALTER TABLE ONLY lacentro.inventary_ordersproducts ALTER COLUMN id SET DEFAULT nextval('lacentro.inventary_ordersproducts_id_seq'::regclass);
 L   ALTER TABLE lacentro.inventary_ordersproducts ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    205    206    206            7           2604    24787    inventary_preparationsite id    DEFAULT     �   ALTER TABLE ONLY lacentro.inventary_preparationsite ALTER COLUMN id SET DEFAULT nextval('lacentro.inventary_preparationsite_id_seq'::regclass);
 M   ALTER TABLE lacentro.inventary_preparationsite ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    201    202    202            8           2604    24795    inventary_product id    DEFAULT     �   ALTER TABLE ONLY lacentro.inventary_product ALTER COLUMN id SET DEFAULT nextval('lacentro.inventary_product_id_seq'::regclass);
 E   ALTER TABLE lacentro.inventary_product ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    203    204    204            ;           2604    24863    oauth2_provider_accesstoken id    DEFAULT     �   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken ALTER COLUMN id SET DEFAULT nextval('lacentro.oauth2_provider_accesstoken_id_seq'::regclass);
 O   ALTER TABLE lacentro.oauth2_provider_accesstoken ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    209    210    210            :           2604    24850    oauth2_provider_application id    DEFAULT     �   ALTER TABLE ONLY lacentro.oauth2_provider_application ALTER COLUMN id SET DEFAULT nextval('lacentro.oauth2_provider_application_id_seq'::regclass);
 O   ALTER TABLE lacentro.oauth2_provider_application ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    208    207    208            <           2604    24876    oauth2_provider_grant id    DEFAULT     �   ALTER TABLE ONLY lacentro.oauth2_provider_grant ALTER COLUMN id SET DEFAULT nextval('lacentro.oauth2_provider_grant_id_seq'::regclass);
 I   ALTER TABLE lacentro.oauth2_provider_grant ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    212    211    212            =           2604    24889    oauth2_provider_refreshtoken id    DEFAULT     �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken ALTER COLUMN id SET DEFAULT nextval('lacentro.oauth2_provider_refreshtoken_id_seq'::regclass);
 P   ALTER TABLE lacentro.oauth2_provider_refreshtoken ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    214    213    214            /           2604    24678    users_usermodel id    DEFAULT     |   ALTER TABLE ONLY lacentro.users_usermodel ALTER COLUMN id SET DEFAULT nextval('lacentro.users_usermodel_id_seq'::regclass);
 C   ALTER TABLE lacentro.users_usermodel ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    187    188    188            0           2604    24691    users_usermodel_groups id    DEFAULT     �   ALTER TABLE ONLY lacentro.users_usermodel_groups ALTER COLUMN id SET DEFAULT nextval('lacentro.users_usermodel_groups_id_seq'::regclass);
 J   ALTER TABLE lacentro.users_usermodel_groups ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    189    190    190            1           2604    24699 #   users_usermodel_user_permissions id    DEFAULT     �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions ALTER COLUMN id SET DEFAULT nextval('lacentro.users_usermodel_user_permissions_id_seq'::regclass);
 T   ALTER TABLE lacentro.users_usermodel_user_permissions ALTER COLUMN id DROP DEFAULT;
       lacentro          docker    false    192    191    192            )           2604    24592    customers_client id    DEFAULT     z   ALTER TABLE ONLY public.customers_client ALTER COLUMN id SET DEFAULT nextval('public.customers_client_id_seq'::regclass);
 B   ALTER TABLE public.customers_client ALTER COLUMN id DROP DEFAULT;
       public          docker    false    176    175    176            (           2604    24581    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          docker    false    174    173    174            �	          0    25021 
   auth_group 
   TABLE DATA           /   COPY ellibra.auth_group (id, name) FROM stdin;
    ellibra          docker    false    223   3n      �	          0    25031    auth_group_permissions 
   TABLE DATA           N   COPY ellibra.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    ellibra          docker    false    225   Pn      �	          0    25013    auth_permission 
   TABLE DATA           O   COPY ellibra.auth_permission (id, name, content_type_id, codename) FROM stdin;
    ellibra          docker    false    221   mn      �	          0    25123    django_admin_log 
   TABLE DATA           �   COPY ellibra.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    ellibra          docker    false    233   q      �	          0    25003    django_content_type 
   TABLE DATA           D   COPY ellibra.django_content_type (id, app_label, model) FROM stdin;
    ellibra          docker    false    219   0q      �	          0    24992    django_migrations 
   TABLE DATA           D   COPY ellibra.django_migrations (id, app, name, applied) FROM stdin;
    ellibra          docker    false    217   r      

          0    25369    django_session 
   TABLE DATA           Q   COPY ellibra.django_session (session_key, session_data, expire_date) FROM stdin;
    ellibra          docker    false    254   t      �	          0    25147    inventary_category 
   TABLE DATA           �   COPY ellibra.inventary_category (id, name, publish, publish_date, creation_date, modification_date, unpublish_date) FROM stdin;
    ellibra          docker    false    235   -t      �	          0    25158    inventary_mesa 
   TABLE DATA           3   COPY ellibra.inventary_mesa (id, name) FROM stdin;
    ellibra          docker    false    237   Jt      �	          0    25166    inventary_orders 
   TABLE DATA           {   COPY ellibra.inventary_orders (id, creation_date, orders_status_cocina, orders_status_barra, mesa_id, user_id) FROM stdin;
    ellibra          docker    false    239   gt      
          0    25193    inventary_ordersproducts 
   TABLE DATA           d   COPY ellibra.inventary_ordersproducts (id, creation_date, order_product_id, product_id) FROM stdin;
    ellibra          docker    false    245   �t      �	          0    25174    inventary_preparationsite 
   TABLE DATA           >   COPY ellibra.inventary_preparationsite (id, name) FROM stdin;
    ellibra          docker    false    241   �t      �	          0    25182    inventary_product 
   TABLE DATA           �   COPY ellibra.inventary_product (id, name, image, description, allergy, price, publish, publish_date, creation_date, modification_date, unpublish_date, category_id, preparation_site_id) FROM stdin;
    ellibra          docker    false    243   �t      
          0    25250    oauth2_provider_accesstoken 
   TABLE DATA           �   COPY ellibra.oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id, created, updated, source_refresh_token_id) FROM stdin;
    ellibra          docker    false    249   �t      
          0    25237    oauth2_provider_application 
   TABLE DATA           �   COPY ellibra.oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization, created, updated) FROM stdin;
    ellibra          docker    false    247   �t      
          0    25263    oauth2_provider_grant 
   TABLE DATA           �   COPY ellibra.oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id, created, updated, code_challenge, code_challenge_method) FROM stdin;
    ellibra          docker    false    251   u      	
          0    25276    oauth2_provider_refreshtoken 
   TABLE DATA           �   COPY ellibra.oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id, created, updated, revoked) FROM stdin;
    ellibra          docker    false    253   2u      �	          0    25065    users_usermodel 
   TABLE DATA           �   COPY ellibra.users_usermodel (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, date_of_birth, image) FROM stdin;
    ellibra          docker    false    227   Ou      �	          0    25078    users_usermodel_groups 
   TABLE DATA           M   COPY ellibra.users_usermodel_groups (id, usermodel_id, group_id) FROM stdin;
    ellibra          docker    false    229   lu      �	          0    25086     users_usermodel_user_permissions 
   TABLE DATA           \   COPY ellibra.users_usermodel_user_permissions (id, usermodel_id, permission_id) FROM stdin;
    ellibra          docker    false    231   �u      �	          0    24631 
   auth_group 
   TABLE DATA           0   COPY lacentro.auth_group (id, name) FROM stdin;
    lacentro          docker    false    184   �u      �	          0    24641    auth_group_permissions 
   TABLE DATA           O   COPY lacentro.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    lacentro          docker    false    186   �u      �	          0    24623    auth_permission 
   TABLE DATA           P   COPY lacentro.auth_permission (id, name, content_type_id, codename) FROM stdin;
    lacentro          docker    false    182   �u      �	          0    24733    django_admin_log 
   TABLE DATA           �   COPY lacentro.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    lacentro          docker    false    194   �x      �	          0    24613    django_content_type 
   TABLE DATA           E   COPY lacentro.django_content_type (id, app_label, model) FROM stdin;
    lacentro          docker    false    180   \y      �	          0    24602    django_migrations 
   TABLE DATA           E   COPY lacentro.django_migrations (id, app, name, applied) FROM stdin;
    lacentro          docker    false    178   8z      �	          0    24979    django_session 
   TABLE DATA           R   COPY lacentro.django_session (session_key, session_data, expire_date) FROM stdin;
    lacentro          docker    false    215   ;|      �	          0    24757    inventary_category 
   TABLE DATA           �   COPY lacentro.inventary_category (id, name, publish, publish_date, creation_date, modification_date, unpublish_date) FROM stdin;
    lacentro          docker    false    196   _}      �	          0    24768    inventary_mesa 
   TABLE DATA           4   COPY lacentro.inventary_mesa (id, name) FROM stdin;
    lacentro          docker    false    198   �}      �	          0    24776    inventary_orders 
   TABLE DATA           |   COPY lacentro.inventary_orders (id, creation_date, orders_status_cocina, orders_status_barra, mesa_id, user_id) FROM stdin;
    lacentro          docker    false    200   �}      �	          0    24803    inventary_ordersproducts 
   TABLE DATA           e   COPY lacentro.inventary_ordersproducts (id, creation_date, order_product_id, product_id) FROM stdin;
    lacentro          docker    false    206   ;~      �	          0    24784    inventary_preparationsite 
   TABLE DATA           ?   COPY lacentro.inventary_preparationsite (id, name) FROM stdin;
    lacentro          docker    false    202   �~      �	          0    24792    inventary_product 
   TABLE DATA           �   COPY lacentro.inventary_product (id, name, image, description, allergy, price, publish, publish_date, creation_date, modification_date, unpublish_date, category_id, preparation_site_id) FROM stdin;
    lacentro          docker    false    204   �~      �	          0    24860    oauth2_provider_accesstoken 
   TABLE DATA           �   COPY lacentro.oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id, created, updated, source_refresh_token_id) FROM stdin;
    lacentro          docker    false    210   �      �	          0    24847    oauth2_provider_application 
   TABLE DATA           �   COPY lacentro.oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization, created, updated) FROM stdin;
    lacentro          docker    false    208   L�      �	          0    24873    oauth2_provider_grant 
   TABLE DATA           �   COPY lacentro.oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id, created, updated, code_challenge, code_challenge_method) FROM stdin;
    lacentro          docker    false    212   E�      �	          0    24886    oauth2_provider_refreshtoken 
   TABLE DATA           �   COPY lacentro.oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id, created, updated, revoked) FROM stdin;
    lacentro          docker    false    214   b�      �	          0    24675    users_usermodel 
   TABLE DATA           �   COPY lacentro.users_usermodel (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, date_of_birth, image) FROM stdin;
    lacentro          docker    false    188   ��      �	          0    24688    users_usermodel_groups 
   TABLE DATA           N   COPY lacentro.users_usermodel_groups (id, usermodel_id, group_id) FROM stdin;
    lacentro          docker    false    190   v�      �	          0    24696     users_usermodel_user_permissions 
   TABLE DATA           ]   COPY lacentro.users_usermodel_user_permissions (id, usermodel_id, permission_id) FROM stdin;
    lacentro          docker    false    192   ��      �	          0    24589    customers_client 
   TABLE DATA           o   COPY public.customers_client (id, domain_url, schema_name, name, paid_until, on_trial, created_on) FROM stdin;
    public          docker    false    176   ��      �	          0    24578    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          docker    false    174   3�      :
           0    0    auth_group_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('ellibra.auth_group_id_seq', 1, false);
          ellibra          docker    false    222            ;
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('ellibra.auth_group_permissions_id_seq', 1, false);
          ellibra          docker    false    224            <
           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('ellibra.auth_permission_id_seq', 66, true);
          ellibra          docker    false    220            =
           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('ellibra.django_admin_log_id_seq', 1, false);
          ellibra          docker    false    232            >
           0    0    django_content_type_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('ellibra.django_content_type_id_seq', 33, true);
          ellibra          docker    false    218            ?
           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('ellibra.django_migrations_id_seq', 33, true);
          ellibra          docker    false    216            @
           0    0    inventary_category_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('ellibra.inventary_category_id_seq', 1, false);
          ellibra          docker    false    234            A
           0    0    inventary_mesa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('ellibra.inventary_mesa_id_seq', 1, false);
          ellibra          docker    false    236            B
           0    0    inventary_orders_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('ellibra.inventary_orders_id_seq', 1, false);
          ellibra          docker    false    238            C
           0    0    inventary_ordersproducts_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('ellibra.inventary_ordersproducts_id_seq', 1, false);
          ellibra          docker    false    244            D
           0    0     inventary_preparationsite_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('ellibra.inventary_preparationsite_id_seq', 1, false);
          ellibra          docker    false    240            E
           0    0    inventary_product_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('ellibra.inventary_product_id_seq', 1, false);
          ellibra          docker    false    242            F
           0    0 "   oauth2_provider_accesstoken_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('ellibra.oauth2_provider_accesstoken_id_seq', 1, false);
          ellibra          docker    false    248            G
           0    0 "   oauth2_provider_application_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('ellibra.oauth2_provider_application_id_seq', 1, false);
          ellibra          docker    false    246            H
           0    0    oauth2_provider_grant_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('ellibra.oauth2_provider_grant_id_seq', 1, false);
          ellibra          docker    false    250            I
           0    0 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('ellibra.oauth2_provider_refreshtoken_id_seq', 1, false);
          ellibra          docker    false    252            J
           0    0    users_usermodel_groups_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('ellibra.users_usermodel_groups_id_seq', 1, false);
          ellibra          docker    false    228            K
           0    0    users_usermodel_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('ellibra.users_usermodel_id_seq', 1, false);
          ellibra          docker    false    226            L
           0    0 '   users_usermodel_user_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('ellibra.users_usermodel_user_permissions_id_seq', 1, false);
          ellibra          docker    false    230            M
           0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('lacentro.auth_group_id_seq', 1, false);
          lacentro          docker    false    183            N
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('lacentro.auth_group_permissions_id_seq', 1, false);
          lacentro          docker    false    185            O
           0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('lacentro.auth_permission_id_seq', 66, true);
          lacentro          docker    false    181            P
           0    0    django_admin_log_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('lacentro.django_admin_log_id_seq', 95, true);
          lacentro          docker    false    193            Q
           0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('lacentro.django_content_type_id_seq', 33, true);
          lacentro          docker    false    179            R
           0    0    django_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('lacentro.django_migrations_id_seq', 33, true);
          lacentro          docker    false    177            S
           0    0    inventary_category_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('lacentro.inventary_category_id_seq', 35, true);
          lacentro          docker    false    195            T
           0    0    inventary_mesa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('lacentro.inventary_mesa_id_seq', 2, true);
          lacentro          docker    false    197            U
           0    0    inventary_orders_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('lacentro.inventary_orders_id_seq', 39, true);
          lacentro          docker    false    199            V
           0    0    inventary_ordersproducts_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('lacentro.inventary_ordersproducts_id_seq', 39, true);
          lacentro          docker    false    205            W
           0    0     inventary_preparationsite_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('lacentro.inventary_preparationsite_id_seq', 2, true);
          lacentro          docker    false    201            X
           0    0    inventary_product_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('lacentro.inventary_product_id_seq', 13, true);
          lacentro          docker    false    203            Y
           0    0 "   oauth2_provider_accesstoken_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('lacentro.oauth2_provider_accesstoken_id_seq', 41, true);
          lacentro          docker    false    209            Z
           0    0 "   oauth2_provider_application_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('lacentro.oauth2_provider_application_id_seq', 35, true);
          lacentro          docker    false    207            [
           0    0    oauth2_provider_grant_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('lacentro.oauth2_provider_grant_id_seq', 1, false);
          lacentro          docker    false    211            \
           0    0 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('lacentro.oauth2_provider_refreshtoken_id_seq', 41, true);
          lacentro          docker    false    213            ]
           0    0    users_usermodel_groups_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('lacentro.users_usermodel_groups_id_seq', 1, false);
          lacentro          docker    false    189            ^
           0    0    users_usermodel_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('lacentro.users_usermodel_id_seq', 1, true);
          lacentro          docker    false    187            _
           0    0 '   users_usermodel_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('lacentro.users_usermodel_user_permissions_id_seq', 1, false);
          lacentro          docker    false    191            `
           0    0    customers_client_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.customers_client_id_seq', 33, true);
          public          docker    false    175            a
           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);
          public          docker    false    173            �           2606    25061    auth_group auth_group_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY ellibra.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 I   ALTER TABLE ONLY ellibra.auth_group DROP CONSTRAINT auth_group_name_key;
       ellibra            docker    false    223            �           2606    25047 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 }   ALTER TABLE ONLY ellibra.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       ellibra            docker    false    225    225            �           2606    25036 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY ellibra.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY ellibra.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       ellibra            docker    false    225            �           2606    25026    auth_group auth_group_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY ellibra.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY ellibra.auth_group DROP CONSTRAINT auth_group_pkey;
       ellibra            docker    false    223            �           2606    25038 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 q   ALTER TABLE ONLY ellibra.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       ellibra            docker    false    221    221            �           2606    25018 $   auth_permission auth_permission_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY ellibra.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY ellibra.auth_permission DROP CONSTRAINT auth_permission_pkey;
       ellibra            docker    false    221            �           2606    25132 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY ellibra.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY ellibra.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       ellibra            docker    false    233            �           2606    25010 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 p   ALTER TABLE ONLY ellibra.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       ellibra            docker    false    219    219            �           2606    25008 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY ellibra.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY ellibra.django_content_type DROP CONSTRAINT django_content_type_pkey;
       ellibra            docker    false    219            �           2606    25000 (   django_migrations django_migrations_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY ellibra.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY ellibra.django_migrations DROP CONSTRAINT django_migrations_pkey;
       ellibra            docker    false    217            	           2606    25376 "   django_session django_session_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY ellibra.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 M   ALTER TABLE ONLY ellibra.django_session DROP CONSTRAINT django_session_pkey;
       ellibra            docker    false    254            �           2606    25155 *   inventary_category inventary_category_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY ellibra.inventary_category
    ADD CONSTRAINT inventary_category_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY ellibra.inventary_category DROP CONSTRAINT inventary_category_pkey;
       ellibra            docker    false    235            �           2606    25163 "   inventary_mesa inventary_mesa_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY ellibra.inventary_mesa
    ADD CONSTRAINT inventary_mesa_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY ellibra.inventary_mesa DROP CONSTRAINT inventary_mesa_pkey;
       ellibra            docker    false    237            �           2606    25171 &   inventary_orders inventary_orders_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY ellibra.inventary_orders
    ADD CONSTRAINT inventary_orders_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY ellibra.inventary_orders DROP CONSTRAINT inventary_orders_pkey;
       ellibra            docker    false    239            �           2606    25198 6   inventary_ordersproducts inventary_ordersproducts_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY ellibra.inventary_ordersproducts
    ADD CONSTRAINT inventary_ordersproducts_pkey PRIMARY KEY (id);
 a   ALTER TABLE ONLY ellibra.inventary_ordersproducts DROP CONSTRAINT inventary_ordersproducts_pkey;
       ellibra            docker    false    245            �           2606    25179 8   inventary_preparationsite inventary_preparationsite_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY ellibra.inventary_preparationsite
    ADD CONSTRAINT inventary_preparationsite_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY ellibra.inventary_preparationsite DROP CONSTRAINT inventary_preparationsite_pkey;
       ellibra            docker    false    241            �           2606    25190 (   inventary_product inventary_product_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY ellibra.inventary_product
    ADD CONSTRAINT inventary_product_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY ellibra.inventary_product DROP CONSTRAINT inventary_product_pkey;
       ellibra            docker    false    243            	           2606    25258 <   oauth2_provider_accesstoken oauth2_provider_accesstoken_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);
 g   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_pkey;
       ellibra            docker    false    249            	           2606    25285 S   oauth2_provider_accesstoken oauth2_provider_accesstoken_source_refresh_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key UNIQUE (source_refresh_token_id);
 ~   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key;
       ellibra            docker    false    249            		           2606    25260 A   oauth2_provider_accesstoken oauth2_provider_accesstoken_token_key 
   CONSTRAINT     ~   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_token_key UNIQUE (token);
 l   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_token_key;
       ellibra            docker    false    249            �           2606    25247 E   oauth2_provider_application oauth2_provider_application_client_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);
 p   ALTER TABLE ONLY ellibra.oauth2_provider_application DROP CONSTRAINT oauth2_provider_application_client_id_key;
       ellibra            docker    false    247             	           2606    25245 <   oauth2_provider_application oauth2_provider_application_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY ellibra.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);
 g   ALTER TABLE ONLY ellibra.oauth2_provider_application DROP CONSTRAINT oauth2_provider_application_pkey;
       ellibra            docker    false    247            	           2606    25273 4   oauth2_provider_grant oauth2_provider_grant_code_key 
   CONSTRAINT     p   ALTER TABLE ONLY ellibra.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_code_key UNIQUE (code);
 _   ALTER TABLE ONLY ellibra.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_code_key;
       ellibra            docker    false    251            	           2606    25271 0   oauth2_provider_grant oauth2_provider_grant_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY ellibra.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY ellibra.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_pkey;
       ellibra            docker    false    251            	           2606    25283 M   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_access_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);
 x   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key;
       ellibra            docker    false    253            	           2606    25281 >   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_pkey;
       ellibra            docker    false    253            	           2606    25327 U   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq UNIQUE (token, revoked);
 �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq;
       ellibra            docker    false    253    253            �           2606    25083 2   users_usermodel_groups users_usermodel_groups_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY ellibra.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_groups_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY ellibra.users_usermodel_groups DROP CONSTRAINT users_usermodel_groups_pkey;
       ellibra            docker    false    229            �           2606    25094 Q   users_usermodel_groups users_usermodel_groups_usermodel_id_group_id_9b0d8efb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_groups_usermodel_id_group_id_9b0d8efb_uniq UNIQUE (usermodel_id, group_id);
 |   ALTER TABLE ONLY ellibra.users_usermodel_groups DROP CONSTRAINT users_usermodel_groups_usermodel_id_group_id_9b0d8efb_uniq;
       ellibra            docker    false    229    229            �           2606    25073 $   users_usermodel users_usermodel_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY ellibra.users_usermodel
    ADD CONSTRAINT users_usermodel_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY ellibra.users_usermodel DROP CONSTRAINT users_usermodel_pkey;
       ellibra            docker    false    227            �           2606    25108 `   users_usermodel_user_permissions users_usermodel_user_per_usermodel_id_permission__4267deae_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_per_usermodel_id_permission__4267deae_uniq UNIQUE (usermodel_id, permission_id);
 �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_per_usermodel_id_permission__4267deae_uniq;
       ellibra            docker    false    231    231            �           2606    25091 F   users_usermodel_user_permissions users_usermodel_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_permissions_pkey PRIMARY KEY (id);
 q   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_permissions_pkey;
       ellibra            docker    false    231            �           2606    25075 ,   users_usermodel users_usermodel_username_key 
   CONSTRAINT     l   ALTER TABLE ONLY ellibra.users_usermodel
    ADD CONSTRAINT users_usermodel_username_key UNIQUE (username);
 W   ALTER TABLE ONLY ellibra.users_usermodel DROP CONSTRAINT users_usermodel_username_key;
       ellibra            docker    false    227            i           2606    24671    auth_group auth_group_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY lacentro.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 J   ALTER TABLE ONLY lacentro.auth_group DROP CONSTRAINT auth_group_name_key;
       lacentro            docker    false    184            n           2606    24657 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 ~   ALTER TABLE ONLY lacentro.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       lacentro            docker    false    186    186            q           2606    24646 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY lacentro.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY lacentro.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       lacentro            docker    false    186            k           2606    24636    auth_group auth_group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY lacentro.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY lacentro.auth_group DROP CONSTRAINT auth_group_pkey;
       lacentro            docker    false    184            d           2606    24648 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 r   ALTER TABLE ONLY lacentro.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       lacentro            docker    false    182    182            f           2606    24628 $   auth_permission auth_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY lacentro.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY lacentro.auth_permission DROP CONSTRAINT auth_permission_pkey;
       lacentro            docker    false    182            �           2606    24742 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY lacentro.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY lacentro.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       lacentro            docker    false    194            _           2606    24620 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY lacentro.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       lacentro            docker    false    180    180            a           2606    24618 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY lacentro.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY lacentro.django_content_type DROP CONSTRAINT django_content_type_pkey;
       lacentro            docker    false    180            ]           2606    24610 (   django_migrations django_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY lacentro.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY lacentro.django_migrations DROP CONSTRAINT django_migrations_pkey;
       lacentro            docker    false    178            �           2606    24986 "   django_session django_session_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY lacentro.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 N   ALTER TABLE ONLY lacentro.django_session DROP CONSTRAINT django_session_pkey;
       lacentro            docker    false    215            �           2606    24765 *   inventary_category inventary_category_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY lacentro.inventary_category
    ADD CONSTRAINT inventary_category_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY lacentro.inventary_category DROP CONSTRAINT inventary_category_pkey;
       lacentro            docker    false    196            �           2606    24773 "   inventary_mesa inventary_mesa_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY lacentro.inventary_mesa
    ADD CONSTRAINT inventary_mesa_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY lacentro.inventary_mesa DROP CONSTRAINT inventary_mesa_pkey;
       lacentro            docker    false    198            �           2606    24781 &   inventary_orders inventary_orders_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY lacentro.inventary_orders
    ADD CONSTRAINT inventary_orders_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY lacentro.inventary_orders DROP CONSTRAINT inventary_orders_pkey;
       lacentro            docker    false    200            �           2606    24808 6   inventary_ordersproducts inventary_ordersproducts_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY lacentro.inventary_ordersproducts
    ADD CONSTRAINT inventary_ordersproducts_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY lacentro.inventary_ordersproducts DROP CONSTRAINT inventary_ordersproducts_pkey;
       lacentro            docker    false    206            �           2606    24789 8   inventary_preparationsite inventary_preparationsite_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY lacentro.inventary_preparationsite
    ADD CONSTRAINT inventary_preparationsite_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY lacentro.inventary_preparationsite DROP CONSTRAINT inventary_preparationsite_pkey;
       lacentro            docker    false    202            �           2606    24800 (   inventary_product inventary_product_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY lacentro.inventary_product
    ADD CONSTRAINT inventary_product_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY lacentro.inventary_product DROP CONSTRAINT inventary_product_pkey;
       lacentro            docker    false    204            �           2606    24868 <   oauth2_provider_accesstoken oauth2_provider_accesstoken_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_pkey;
       lacentro            docker    false    210            �           2606    24895 S   oauth2_provider_accesstoken oauth2_provider_accesstoken_source_refresh_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key UNIQUE (source_refresh_token_id);
    ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key;
       lacentro            docker    false    210            �           2606    24870 A   oauth2_provider_accesstoken oauth2_provider_accesstoken_token_key 
   CONSTRAINT        ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_token_key UNIQUE (token);
 m   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_token_key;
       lacentro            docker    false    210            �           2606    24857 E   oauth2_provider_application oauth2_provider_application_client_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);
 q   ALTER TABLE ONLY lacentro.oauth2_provider_application DROP CONSTRAINT oauth2_provider_application_client_id_key;
       lacentro            docker    false    208            �           2606    24855 <   oauth2_provider_application oauth2_provider_application_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY lacentro.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY lacentro.oauth2_provider_application DROP CONSTRAINT oauth2_provider_application_pkey;
       lacentro            docker    false    208            �           2606    24883 4   oauth2_provider_grant oauth2_provider_grant_code_key 
   CONSTRAINT     q   ALTER TABLE ONLY lacentro.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_code_key UNIQUE (code);
 `   ALTER TABLE ONLY lacentro.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_code_key;
       lacentro            docker    false    212            �           2606    24881 0   oauth2_provider_grant oauth2_provider_grant_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY lacentro.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY lacentro.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_pkey;
       lacentro            docker    false    212            �           2606    24893 M   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_access_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);
 y   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key;
       lacentro            docker    false    214            �           2606    24891 >   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_pkey;
       lacentro            docker    false    214            �           2606    24937 U   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq UNIQUE (token, revoked);
 �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq;
       lacentro            docker    false    214    214            y           2606    24693 2   users_usermodel_groups users_usermodel_groups_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY lacentro.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_groups_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY lacentro.users_usermodel_groups DROP CONSTRAINT users_usermodel_groups_pkey;
       lacentro            docker    false    190            |           2606    24704 Q   users_usermodel_groups users_usermodel_groups_usermodel_id_group_id_9b0d8efb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_groups_usermodel_id_group_id_9b0d8efb_uniq UNIQUE (usermodel_id, group_id);
 }   ALTER TABLE ONLY lacentro.users_usermodel_groups DROP CONSTRAINT users_usermodel_groups_usermodel_id_group_id_9b0d8efb_uniq;
       lacentro            docker    false    190    190            s           2606    24683 $   users_usermodel users_usermodel_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY lacentro.users_usermodel
    ADD CONSTRAINT users_usermodel_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY lacentro.users_usermodel DROP CONSTRAINT users_usermodel_pkey;
       lacentro            docker    false    188            ~           2606    24718 `   users_usermodel_user_permissions users_usermodel_user_per_usermodel_id_permission__4267deae_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_per_usermodel_id_permission__4267deae_uniq UNIQUE (usermodel_id, permission_id);
 �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_per_usermodel_id_permission__4267deae_uniq;
       lacentro            docker    false    192    192            �           2606    24701 F   users_usermodel_user_permissions users_usermodel_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_permissions_pkey;
       lacentro            docker    false    192            v           2606    24685 ,   users_usermodel users_usermodel_username_key 
   CONSTRAINT     m   ALTER TABLE ONLY lacentro.users_usermodel
    ADD CONSTRAINT users_usermodel_username_key UNIQUE (username);
 X   ALTER TABLE ONLY lacentro.users_usermodel DROP CONSTRAINT users_usermodel_username_key;
       lacentro            docker    false    188            V           2606    24596 0   customers_client customers_client_domain_url_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.customers_client
    ADD CONSTRAINT customers_client_domain_url_key UNIQUE (domain_url);
 Z   ALTER TABLE ONLY public.customers_client DROP CONSTRAINT customers_client_domain_url_key;
       public            docker    false    176            X           2606    24594 &   customers_client customers_client_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.customers_client
    ADD CONSTRAINT customers_client_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.customers_client DROP CONSTRAINT customers_client_pkey;
       public            docker    false    176            [           2606    24598 1   customers_client customers_client_schema_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.customers_client
    ADD CONSTRAINT customers_client_schema_name_key UNIQUE (schema_name);
 [   ALTER TABLE ONLY public.customers_client DROP CONSTRAINT customers_client_schema_name_key;
       public            docker    false    176            S           2606    24586 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            docker    false    174            �           1259    25062    auth_group_name_a6ea08ec_like    INDEX     i   CREATE INDEX auth_group_name_a6ea08ec_like ON ellibra.auth_group USING btree (name varchar_pattern_ops);
 2   DROP INDEX ellibra.auth_group_name_a6ea08ec_like;
       ellibra            docker    false    223            �           1259    25058 (   auth_group_permissions_group_id_b120cbf9    INDEX     p   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON ellibra.auth_group_permissions USING btree (group_id);
 =   DROP INDEX ellibra.auth_group_permissions_group_id_b120cbf9;
       ellibra            docker    false    225            �           1259    25059 -   auth_group_permissions_permission_id_84c5c92e    INDEX     z   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON ellibra.auth_group_permissions USING btree (permission_id);
 B   DROP INDEX ellibra.auth_group_permissions_permission_id_84c5c92e;
       ellibra            docker    false    225            �           1259    25044 (   auth_permission_content_type_id_2f476e4b    INDEX     p   CREATE INDEX auth_permission_content_type_id_2f476e4b ON ellibra.auth_permission USING btree (content_type_id);
 =   DROP INDEX ellibra.auth_permission_content_type_id_2f476e4b;
       ellibra            docker    false    221            �           1259    25143 )   django_admin_log_content_type_id_c4bce8eb    INDEX     r   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON ellibra.django_admin_log USING btree (content_type_id);
 >   DROP INDEX ellibra.django_admin_log_content_type_id_c4bce8eb;
       ellibra            docker    false    233            �           1259    25144 !   django_admin_log_user_id_c564eba6    INDEX     b   CREATE INDEX django_admin_log_user_id_c564eba6 ON ellibra.django_admin_log USING btree (user_id);
 6   DROP INDEX ellibra.django_admin_log_user_id_c564eba6;
       ellibra            docker    false    233            	           1259    25378 #   django_session_expire_date_a5c62663    INDEX     f   CREATE INDEX django_session_expire_date_a5c62663 ON ellibra.django_session USING btree (expire_date);
 8   DROP INDEX ellibra.django_session_expire_date_a5c62663;
       ellibra            docker    false    254            	           1259    25377 (   django_session_session_key_c0390e0f_like    INDEX        CREATE INDEX django_session_session_key_c0390e0f_like ON ellibra.django_session USING btree (session_key varchar_pattern_ops);
 =   DROP INDEX ellibra.django_session_session_key_c0390e0f_like;
       ellibra            docker    false    254            �           1259    25204 !   inventary_orders_mesa_id_ef54a456    INDEX     b   CREATE INDEX inventary_orders_mesa_id_ef54a456 ON ellibra.inventary_orders USING btree (mesa_id);
 6   DROP INDEX ellibra.inventary_orders_mesa_id_ef54a456;
       ellibra            docker    false    239            �           1259    25234 !   inventary_orders_user_id_a6087656    INDEX     b   CREATE INDEX inventary_orders_user_id_a6087656 ON ellibra.inventary_orders USING btree (user_id);
 6   DROP INDEX ellibra.inventary_orders_user_id_a6087656;
       ellibra            docker    false    239            �           1259    25227 2   inventary_ordersproducts_order_product_id_7d9a26da    INDEX     �   CREATE INDEX inventary_ordersproducts_order_product_id_7d9a26da ON ellibra.inventary_ordersproducts USING btree (order_product_id);
 G   DROP INDEX ellibra.inventary_ordersproducts_order_product_id_7d9a26da;
       ellibra            docker    false    245            �           1259    25228 ,   inventary_ordersproducts_product_id_6807666a    INDEX     x   CREATE INDEX inventary_ordersproducts_product_id_6807666a ON ellibra.inventary_ordersproducts USING btree (product_id);
 A   DROP INDEX ellibra.inventary_ordersproducts_product_id_6807666a;
       ellibra            docker    false    245            �           1259    25215 &   inventary_product_category_id_017e7f7b    INDEX     l   CREATE INDEX inventary_product_category_id_017e7f7b ON ellibra.inventary_product USING btree (category_id);
 ;   DROP INDEX ellibra.inventary_product_category_id_017e7f7b;
       ellibra            docker    false    243            �           1259    25216 .   inventary_product_preparation_site_id_bca5b6dd    INDEX     |   CREATE INDEX inventary_product_preparation_site_id_bca5b6dd ON ellibra.inventary_product USING btree (preparation_site_id);
 C   DROP INDEX ellibra.inventary_product_preparation_site_id_bca5b6dd;
       ellibra            docker    false    243            	           1259    25311 3   oauth2_provider_accesstoken_application_id_b22886e1    INDEX     �   CREATE INDEX oauth2_provider_accesstoken_application_id_b22886e1 ON ellibra.oauth2_provider_accesstoken USING btree (application_id);
 H   DROP INDEX ellibra.oauth2_provider_accesstoken_application_id_b22886e1;
       ellibra            docker    false    249            	           1259    25310 /   oauth2_provider_accesstoken_token_8af090f8_like    INDEX     �   CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON ellibra.oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);
 D   DROP INDEX ellibra.oauth2_provider_accesstoken_token_8af090f8_like;
       ellibra            docker    false    249            
	           1259    25312 ,   oauth2_provider_accesstoken_user_id_6e4c9a65    INDEX     x   CREATE INDEX oauth2_provider_accesstoken_user_id_6e4c9a65 ON ellibra.oauth2_provider_accesstoken USING btree (user_id);
 A   DROP INDEX ellibra.oauth2_provider_accesstoken_user_id_6e4c9a65;
       ellibra            docker    false    249            �           1259    25296 3   oauth2_provider_application_client_id_03f0cc84_like    INDEX     �   CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON ellibra.oauth2_provider_application USING btree (client_id varchar_pattern_ops);
 H   DROP INDEX ellibra.oauth2_provider_application_client_id_03f0cc84_like;
       ellibra            docker    false    247            �           1259    25297 2   oauth2_provider_application_client_secret_53133678    INDEX     �   CREATE INDEX oauth2_provider_application_client_secret_53133678 ON ellibra.oauth2_provider_application USING btree (client_secret);
 G   DROP INDEX ellibra.oauth2_provider_application_client_secret_53133678;
       ellibra            docker    false    247            �           1259    25298 7   oauth2_provider_application_client_secret_53133678_like    INDEX     �   CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON ellibra.oauth2_provider_application USING btree (client_secret varchar_pattern_ops);
 L   DROP INDEX ellibra.oauth2_provider_application_client_secret_53133678_like;
       ellibra            docker    false    247            	           1259    25299 ,   oauth2_provider_application_user_id_79829054    INDEX     x   CREATE INDEX oauth2_provider_application_user_id_79829054 ON ellibra.oauth2_provider_application USING btree (user_id);
 A   DROP INDEX ellibra.oauth2_provider_application_user_id_79829054;
       ellibra            docker    false    247            	           1259    25324 -   oauth2_provider_grant_application_id_81923564    INDEX     z   CREATE INDEX oauth2_provider_grant_application_id_81923564 ON ellibra.oauth2_provider_grant USING btree (application_id);
 B   DROP INDEX ellibra.oauth2_provider_grant_application_id_81923564;
       ellibra            docker    false    251            	           1259    25323 (   oauth2_provider_grant_code_49ab4ddf_like    INDEX        CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON ellibra.oauth2_provider_grant USING btree (code varchar_pattern_ops);
 =   DROP INDEX ellibra.oauth2_provider_grant_code_49ab4ddf_like;
       ellibra            docker    false    251            	           1259    25325 &   oauth2_provider_grant_user_id_e8f62af8    INDEX     l   CREATE INDEX oauth2_provider_grant_user_id_e8f62af8 ON ellibra.oauth2_provider_grant USING btree (user_id);
 ;   DROP INDEX ellibra.oauth2_provider_grant_user_id_e8f62af8;
       ellibra            docker    false    251            	           1259    25343 4   oauth2_provider_refreshtoken_application_id_2d1c311b    INDEX     �   CREATE INDEX oauth2_provider_refreshtoken_application_id_2d1c311b ON ellibra.oauth2_provider_refreshtoken USING btree (application_id);
 I   DROP INDEX ellibra.oauth2_provider_refreshtoken_application_id_2d1c311b;
       ellibra            docker    false    253            	           1259    25344 -   oauth2_provider_refreshtoken_user_id_da837fce    INDEX     z   CREATE INDEX oauth2_provider_refreshtoken_user_id_da837fce ON ellibra.oauth2_provider_refreshtoken USING btree (user_id);
 B   DROP INDEX ellibra.oauth2_provider_refreshtoken_user_id_da837fce;
       ellibra            docker    false    253            �           1259    25106 (   users_usermodel_groups_group_id_21c32c00    INDEX     p   CREATE INDEX users_usermodel_groups_group_id_21c32c00 ON ellibra.users_usermodel_groups USING btree (group_id);
 =   DROP INDEX ellibra.users_usermodel_groups_group_id_21c32c00;
       ellibra            docker    false    229            �           1259    25105 ,   users_usermodel_groups_usermodel_id_5dda3e30    INDEX     x   CREATE INDEX users_usermodel_groups_usermodel_id_5dda3e30 ON ellibra.users_usermodel_groups USING btree (usermodel_id);
 A   DROP INDEX ellibra.users_usermodel_groups_usermodel_id_5dda3e30;
       ellibra            docker    false    229            �           1259    25120 7   users_usermodel_user_permissions_permission_id_ca2684d8    INDEX     �   CREATE INDEX users_usermodel_user_permissions_permission_id_ca2684d8 ON ellibra.users_usermodel_user_permissions USING btree (permission_id);
 L   DROP INDEX ellibra.users_usermodel_user_permissions_permission_id_ca2684d8;
       ellibra            docker    false    231            �           1259    25119 6   users_usermodel_user_permissions_usermodel_id_bbf08559    INDEX     �   CREATE INDEX users_usermodel_user_permissions_usermodel_id_bbf08559 ON ellibra.users_usermodel_user_permissions USING btree (usermodel_id);
 K   DROP INDEX ellibra.users_usermodel_user_permissions_usermodel_id_bbf08559;
       ellibra            docker    false    231            �           1259    25092 &   users_usermodel_username_20b513bc_like    INDEX     {   CREATE INDEX users_usermodel_username_20b513bc_like ON ellibra.users_usermodel USING btree (username varchar_pattern_ops);
 ;   DROP INDEX ellibra.users_usermodel_username_20b513bc_like;
       ellibra            docker    false    227            g           1259    24672    auth_group_name_a6ea08ec_like    INDEX     j   CREATE INDEX auth_group_name_a6ea08ec_like ON lacentro.auth_group USING btree (name varchar_pattern_ops);
 3   DROP INDEX lacentro.auth_group_name_a6ea08ec_like;
       lacentro            docker    false    184            l           1259    24668 (   auth_group_permissions_group_id_b120cbf9    INDEX     q   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON lacentro.auth_group_permissions USING btree (group_id);
 >   DROP INDEX lacentro.auth_group_permissions_group_id_b120cbf9;
       lacentro            docker    false    186            o           1259    24669 -   auth_group_permissions_permission_id_84c5c92e    INDEX     {   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON lacentro.auth_group_permissions USING btree (permission_id);
 C   DROP INDEX lacentro.auth_group_permissions_permission_id_84c5c92e;
       lacentro            docker    false    186            b           1259    24654 (   auth_permission_content_type_id_2f476e4b    INDEX     q   CREATE INDEX auth_permission_content_type_id_2f476e4b ON lacentro.auth_permission USING btree (content_type_id);
 >   DROP INDEX lacentro.auth_permission_content_type_id_2f476e4b;
       lacentro            docker    false    182            �           1259    24753 )   django_admin_log_content_type_id_c4bce8eb    INDEX     s   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON lacentro.django_admin_log USING btree (content_type_id);
 ?   DROP INDEX lacentro.django_admin_log_content_type_id_c4bce8eb;
       lacentro            docker    false    194            �           1259    24754 !   django_admin_log_user_id_c564eba6    INDEX     c   CREATE INDEX django_admin_log_user_id_c564eba6 ON lacentro.django_admin_log USING btree (user_id);
 7   DROP INDEX lacentro.django_admin_log_user_id_c564eba6;
       lacentro            docker    false    194            �           1259    24988 #   django_session_expire_date_a5c62663    INDEX     g   CREATE INDEX django_session_expire_date_a5c62663 ON lacentro.django_session USING btree (expire_date);
 9   DROP INDEX lacentro.django_session_expire_date_a5c62663;
       lacentro            docker    false    215            �           1259    24987 (   django_session_session_key_c0390e0f_like    INDEX     �   CREATE INDEX django_session_session_key_c0390e0f_like ON lacentro.django_session USING btree (session_key varchar_pattern_ops);
 >   DROP INDEX lacentro.django_session_session_key_c0390e0f_like;
       lacentro            docker    false    215            �           1259    24814 !   inventary_orders_mesa_id_ef54a456    INDEX     c   CREATE INDEX inventary_orders_mesa_id_ef54a456 ON lacentro.inventary_orders USING btree (mesa_id);
 7   DROP INDEX lacentro.inventary_orders_mesa_id_ef54a456;
       lacentro            docker    false    200            �           1259    24844 !   inventary_orders_user_id_a6087656    INDEX     c   CREATE INDEX inventary_orders_user_id_a6087656 ON lacentro.inventary_orders USING btree (user_id);
 7   DROP INDEX lacentro.inventary_orders_user_id_a6087656;
       lacentro            docker    false    200            �           1259    24837 2   inventary_ordersproducts_order_product_id_7d9a26da    INDEX     �   CREATE INDEX inventary_ordersproducts_order_product_id_7d9a26da ON lacentro.inventary_ordersproducts USING btree (order_product_id);
 H   DROP INDEX lacentro.inventary_ordersproducts_order_product_id_7d9a26da;
       lacentro            docker    false    206            �           1259    24838 ,   inventary_ordersproducts_product_id_6807666a    INDEX     y   CREATE INDEX inventary_ordersproducts_product_id_6807666a ON lacentro.inventary_ordersproducts USING btree (product_id);
 B   DROP INDEX lacentro.inventary_ordersproducts_product_id_6807666a;
       lacentro            docker    false    206            �           1259    24825 &   inventary_product_category_id_017e7f7b    INDEX     m   CREATE INDEX inventary_product_category_id_017e7f7b ON lacentro.inventary_product USING btree (category_id);
 <   DROP INDEX lacentro.inventary_product_category_id_017e7f7b;
       lacentro            docker    false    204            �           1259    24826 .   inventary_product_preparation_site_id_bca5b6dd    INDEX     }   CREATE INDEX inventary_product_preparation_site_id_bca5b6dd ON lacentro.inventary_product USING btree (preparation_site_id);
 D   DROP INDEX lacentro.inventary_product_preparation_site_id_bca5b6dd;
       lacentro            docker    false    204            �           1259    24921 3   oauth2_provider_accesstoken_application_id_b22886e1    INDEX     �   CREATE INDEX oauth2_provider_accesstoken_application_id_b22886e1 ON lacentro.oauth2_provider_accesstoken USING btree (application_id);
 I   DROP INDEX lacentro.oauth2_provider_accesstoken_application_id_b22886e1;
       lacentro            docker    false    210            �           1259    24920 /   oauth2_provider_accesstoken_token_8af090f8_like    INDEX     �   CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON lacentro.oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);
 E   DROP INDEX lacentro.oauth2_provider_accesstoken_token_8af090f8_like;
       lacentro            docker    false    210            �           1259    24922 ,   oauth2_provider_accesstoken_user_id_6e4c9a65    INDEX     y   CREATE INDEX oauth2_provider_accesstoken_user_id_6e4c9a65 ON lacentro.oauth2_provider_accesstoken USING btree (user_id);
 B   DROP INDEX lacentro.oauth2_provider_accesstoken_user_id_6e4c9a65;
       lacentro            docker    false    210            �           1259    24906 3   oauth2_provider_application_client_id_03f0cc84_like    INDEX     �   CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON lacentro.oauth2_provider_application USING btree (client_id varchar_pattern_ops);
 I   DROP INDEX lacentro.oauth2_provider_application_client_id_03f0cc84_like;
       lacentro            docker    false    208            �           1259    24907 2   oauth2_provider_application_client_secret_53133678    INDEX     �   CREATE INDEX oauth2_provider_application_client_secret_53133678 ON lacentro.oauth2_provider_application USING btree (client_secret);
 H   DROP INDEX lacentro.oauth2_provider_application_client_secret_53133678;
       lacentro            docker    false    208            �           1259    24908 7   oauth2_provider_application_client_secret_53133678_like    INDEX     �   CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON lacentro.oauth2_provider_application USING btree (client_secret varchar_pattern_ops);
 M   DROP INDEX lacentro.oauth2_provider_application_client_secret_53133678_like;
       lacentro            docker    false    208            �           1259    24909 ,   oauth2_provider_application_user_id_79829054    INDEX     y   CREATE INDEX oauth2_provider_application_user_id_79829054 ON lacentro.oauth2_provider_application USING btree (user_id);
 B   DROP INDEX lacentro.oauth2_provider_application_user_id_79829054;
       lacentro            docker    false    208            �           1259    24934 -   oauth2_provider_grant_application_id_81923564    INDEX     {   CREATE INDEX oauth2_provider_grant_application_id_81923564 ON lacentro.oauth2_provider_grant USING btree (application_id);
 C   DROP INDEX lacentro.oauth2_provider_grant_application_id_81923564;
       lacentro            docker    false    212            �           1259    24933 (   oauth2_provider_grant_code_49ab4ddf_like    INDEX     �   CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON lacentro.oauth2_provider_grant USING btree (code varchar_pattern_ops);
 >   DROP INDEX lacentro.oauth2_provider_grant_code_49ab4ddf_like;
       lacentro            docker    false    212            �           1259    24935 &   oauth2_provider_grant_user_id_e8f62af8    INDEX     m   CREATE INDEX oauth2_provider_grant_user_id_e8f62af8 ON lacentro.oauth2_provider_grant USING btree (user_id);
 <   DROP INDEX lacentro.oauth2_provider_grant_user_id_e8f62af8;
       lacentro            docker    false    212            �           1259    24953 4   oauth2_provider_refreshtoken_application_id_2d1c311b    INDEX     �   CREATE INDEX oauth2_provider_refreshtoken_application_id_2d1c311b ON lacentro.oauth2_provider_refreshtoken USING btree (application_id);
 J   DROP INDEX lacentro.oauth2_provider_refreshtoken_application_id_2d1c311b;
       lacentro            docker    false    214            �           1259    24954 -   oauth2_provider_refreshtoken_user_id_da837fce    INDEX     {   CREATE INDEX oauth2_provider_refreshtoken_user_id_da837fce ON lacentro.oauth2_provider_refreshtoken USING btree (user_id);
 C   DROP INDEX lacentro.oauth2_provider_refreshtoken_user_id_da837fce;
       lacentro            docker    false    214            w           1259    24716 (   users_usermodel_groups_group_id_21c32c00    INDEX     q   CREATE INDEX users_usermodel_groups_group_id_21c32c00 ON lacentro.users_usermodel_groups USING btree (group_id);
 >   DROP INDEX lacentro.users_usermodel_groups_group_id_21c32c00;
       lacentro            docker    false    190            z           1259    24715 ,   users_usermodel_groups_usermodel_id_5dda3e30    INDEX     y   CREATE INDEX users_usermodel_groups_usermodel_id_5dda3e30 ON lacentro.users_usermodel_groups USING btree (usermodel_id);
 B   DROP INDEX lacentro.users_usermodel_groups_usermodel_id_5dda3e30;
       lacentro            docker    false    190                       1259    24730 7   users_usermodel_user_permissions_permission_id_ca2684d8    INDEX     �   CREATE INDEX users_usermodel_user_permissions_permission_id_ca2684d8 ON lacentro.users_usermodel_user_permissions USING btree (permission_id);
 M   DROP INDEX lacentro.users_usermodel_user_permissions_permission_id_ca2684d8;
       lacentro            docker    false    192            �           1259    24729 6   users_usermodel_user_permissions_usermodel_id_bbf08559    INDEX     �   CREATE INDEX users_usermodel_user_permissions_usermodel_id_bbf08559 ON lacentro.users_usermodel_user_permissions USING btree (usermodel_id);
 L   DROP INDEX lacentro.users_usermodel_user_permissions_usermodel_id_bbf08559;
       lacentro            docker    false    192            t           1259    24702 &   users_usermodel_username_20b513bc_like    INDEX     |   CREATE INDEX users_usermodel_username_20b513bc_like ON lacentro.users_usermodel USING btree (username varchar_pattern_ops);
 <   DROP INDEX lacentro.users_usermodel_username_20b513bc_like;
       lacentro            docker    false    188            T           1259    25379 )   customers_client_domain_url_842744eb_like    INDEX     �   CREATE INDEX customers_client_domain_url_842744eb_like ON public.customers_client USING btree (domain_url varchar_pattern_ops);
 =   DROP INDEX public.customers_client_domain_url_842744eb_like;
       public            docker    false    176            Y           1259    25380 *   customers_client_schema_name_e47dad99_like    INDEX     �   CREATE INDEX customers_client_schema_name_e47dad99_like ON public.customers_client USING btree (schema_name varchar_pattern_ops);
 >   DROP INDEX public.customers_client_schema_name_e47dad99_like;
       public            docker    false    176            8	           2606    25053 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES ellibra.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY ellibra.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       ellibra          docker    false    221    2247    225            7	           2606    25048 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES ellibra.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY ellibra.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       ellibra          docker    false    223    2252    225            6	           2606    25039 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES ellibra.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY ellibra.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       ellibra          docker    false    219    221    2242            =	           2606    25133 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES ellibra.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY ellibra.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       ellibra          docker    false    219    233    2242            >	           2606    25138 H   django_admin_log django_admin_log_user_id_c564eba6_fk_users_usermodel_id    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_usermodel_id FOREIGN KEY (user_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY ellibra.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_usermodel_id;
       ellibra          docker    false    233    227    2260            ?	           2606    25199 G   inventary_orders inventary_orders_mesa_id_ef54a456_fk_inventary_mesa_id    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.inventary_orders
    ADD CONSTRAINT inventary_orders_mesa_id_ef54a456_fk_inventary_mesa_id FOREIGN KEY (mesa_id) REFERENCES ellibra.inventary_mesa(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY ellibra.inventary_orders DROP CONSTRAINT inventary_orders_mesa_id_ef54a456_fk_inventary_mesa_id;
       ellibra          docker    false    239    2283    237            @	           2606    25229 .   inventary_orders inventary_orders_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.inventary_orders
    ADD CONSTRAINT inventary_orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY ellibra.inventary_orders DROP CONSTRAINT inventary_orders_user_id_fkey;
       ellibra          docker    false    2260    227    239            C	           2606    25217 T   inventary_ordersproducts inventary_ordersprod_order_product_id_7d9a26da_fk_inventary    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.inventary_ordersproducts
    ADD CONSTRAINT inventary_ordersprod_order_product_id_7d9a26da_fk_inventary FOREIGN KEY (order_product_id) REFERENCES ellibra.inventary_orders(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY ellibra.inventary_ordersproducts DROP CONSTRAINT inventary_ordersprod_order_product_id_7d9a26da_fk_inventary;
       ellibra          docker    false    239    245    2286            D	           2606    25222 N   inventary_ordersproducts inventary_ordersprod_product_id_6807666a_fk_inventary    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.inventary_ordersproducts
    ADD CONSTRAINT inventary_ordersprod_product_id_6807666a_fk_inventary FOREIGN KEY (product_id) REFERENCES ellibra.inventary_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY ellibra.inventary_ordersproducts DROP CONSTRAINT inventary_ordersprod_product_id_6807666a_fk_inventary;
       ellibra          docker    false    245    243    2292            A	           2606    25205 Q   inventary_product inventary_product_category_id_017e7f7b_fk_inventary_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.inventary_product
    ADD CONSTRAINT inventary_product_category_id_017e7f7b_fk_inventary_category_id FOREIGN KEY (category_id) REFERENCES ellibra.inventary_category(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY ellibra.inventary_product DROP CONSTRAINT inventary_product_category_id_017e7f7b_fk_inventary_category_id;
       ellibra          docker    false    235    2281    243            B	           2606    25210 M   inventary_product inventary_product_preparation_site_id_bca5b6dd_fk_inventary    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.inventary_product
    ADD CONSTRAINT inventary_product_preparation_site_id_bca5b6dd_fk_inventary FOREIGN KEY (preparation_site_id) REFERENCES ellibra.inventary_preparationsite(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY ellibra.inventary_product DROP CONSTRAINT inventary_product_preparation_site_id_bca5b6dd_fk_inventary;
       ellibra          docker    false    241    243    2289            G	           2606    25300 U   oauth2_provider_accesstoken oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES ellibra.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr;
       ellibra          docker    false    247    249    2304            H	           2606    25305 N   oauth2_provider_accesstoken oauth2_provider_acce_user_id_6e4c9a65_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_user_id_6e4c9a65_fk_users_use FOREIGN KEY (user_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_acce_user_id_6e4c9a65_fk_users_use;
       ellibra          docker    false    2260    227    249            F	           2606    25286 T   oauth2_provider_accesstoken oauth2_provider_accesstoken_source_refresh_token_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_fkey FOREIGN KEY (source_refresh_token_id) REFERENCES ellibra.oauth2_provider_refreshtoken(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY ellibra.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_fkey;
       ellibra          docker    false    249    253    2326            E	           2606    25291 N   oauth2_provider_application oauth2_provider_appl_user_id_79829054_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_appl_user_id_79829054_fk_users_use FOREIGN KEY (user_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY ellibra.oauth2_provider_application DROP CONSTRAINT oauth2_provider_appl_user_id_79829054_fk_users_use;
       ellibra          docker    false    2260    227    247            I	           2606    25313 O   oauth2_provider_grant oauth2_provider_gran_application_id_81923564_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_gran_application_id_81923564_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES ellibra.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY ellibra.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_gran_application_id_81923564_fk_oauth2_pr;
       ellibra          docker    false    251    247    2304            J	           2606    25318 R   oauth2_provider_grant oauth2_provider_grant_user_id_e8f62af8_fk_users_usermodel_id    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_users_usermodel_id FOREIGN KEY (user_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY ellibra.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_users_usermodel_id;
       ellibra          docker    false    227    2260    251            K	           2606    25328 W   oauth2_provider_refreshtoken oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr FOREIGN KEY (access_token_id) REFERENCES ellibra.oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr;
       ellibra          docker    false    2308    249    253            L	           2606    25333 V   oauth2_provider_refreshtoken oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES ellibra.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr;
       ellibra          docker    false    2304    247    253            M	           2606    25338 O   oauth2_provider_refreshtoken oauth2_provider_refr_user_id_da837fce_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_user_id_da837fce_fk_users_use FOREIGN KEY (user_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY ellibra.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_user_id_da837fce_fk_users_use;
       ellibra          docker    false    253    227    2260            9	           2606    25095 N   users_usermodel_groups users_usermodel_grou_usermodel_id_5dda3e30_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_grou_usermodel_id_5dda3e30_fk_users_use FOREIGN KEY (usermodel_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY ellibra.users_usermodel_groups DROP CONSTRAINT users_usermodel_grou_usermodel_id_5dda3e30_fk_users_use;
       ellibra          docker    false    2260    227    229            :	           2606    25100 P   users_usermodel_groups users_usermodel_groups_group_id_21c32c00_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_groups_group_id_21c32c00_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES ellibra.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY ellibra.users_usermodel_groups DROP CONSTRAINT users_usermodel_groups_group_id_21c32c00_fk_auth_group_id;
       ellibra          docker    false    223    2252    229            <	           2606    25114 Y   users_usermodel_user_permissions users_usermodel_user_permission_id_ca2684d8_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_permission_id_ca2684d8_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES ellibra.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_permission_id_ca2684d8_fk_auth_perm;
       ellibra          docker    false    2247    231    221            ;	           2606    25109 X   users_usermodel_user_permissions users_usermodel_user_usermodel_id_bbf08559_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_usermodel_id_bbf08559_fk_users_use FOREIGN KEY (usermodel_id) REFERENCES ellibra.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY ellibra.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_usermodel_id_bbf08559_fk_users_use;
       ellibra          docker    false    2260    227    231             	           2606    24663 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES lacentro.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY lacentro.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       lacentro          docker    false    186    182    2150            	           2606    24658 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES lacentro.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY lacentro.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       lacentro          docker    false    184    186    2155            	           2606    24649 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES lacentro.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY lacentro.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       lacentro          docker    false    2145    180    182            %	           2606    24743 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES lacentro.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY lacentro.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       lacentro          docker    false    194    2145    180            &	           2606    24748 H   django_admin_log django_admin_log_user_id_c564eba6_fk_users_usermodel_id    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_usermodel_id FOREIGN KEY (user_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY lacentro.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_usermodel_id;
       lacentro          docker    false    188    2163    194            '	           2606    24809 G   inventary_orders inventary_orders_mesa_id_ef54a456_fk_inventary_mesa_id    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.inventary_orders
    ADD CONSTRAINT inventary_orders_mesa_id_ef54a456_fk_inventary_mesa_id FOREIGN KEY (mesa_id) REFERENCES lacentro.inventary_mesa(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY lacentro.inventary_orders DROP CONSTRAINT inventary_orders_mesa_id_ef54a456_fk_inventary_mesa_id;
       lacentro          docker    false    2186    198    200            (	           2606    24839 .   inventary_orders inventary_orders_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.inventary_orders
    ADD CONSTRAINT inventary_orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY lacentro.inventary_orders DROP CONSTRAINT inventary_orders_user_id_fkey;
       lacentro          docker    false    188    200    2163            +	           2606    24827 T   inventary_ordersproducts inventary_ordersprod_order_product_id_7d9a26da_fk_inventary    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.inventary_ordersproducts
    ADD CONSTRAINT inventary_ordersprod_order_product_id_7d9a26da_fk_inventary FOREIGN KEY (order_product_id) REFERENCES lacentro.inventary_orders(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY lacentro.inventary_ordersproducts DROP CONSTRAINT inventary_ordersprod_order_product_id_7d9a26da_fk_inventary;
       lacentro          docker    false    206    2189    200            ,	           2606    24832 N   inventary_ordersproducts inventary_ordersprod_product_id_6807666a_fk_inventary    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.inventary_ordersproducts
    ADD CONSTRAINT inventary_ordersprod_product_id_6807666a_fk_inventary FOREIGN KEY (product_id) REFERENCES lacentro.inventary_product(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY lacentro.inventary_ordersproducts DROP CONSTRAINT inventary_ordersprod_product_id_6807666a_fk_inventary;
       lacentro          docker    false    204    206    2195            )	           2606    24815 Q   inventary_product inventary_product_category_id_017e7f7b_fk_inventary_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.inventary_product
    ADD CONSTRAINT inventary_product_category_id_017e7f7b_fk_inventary_category_id FOREIGN KEY (category_id) REFERENCES lacentro.inventary_category(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY lacentro.inventary_product DROP CONSTRAINT inventary_product_category_id_017e7f7b_fk_inventary_category_id;
       lacentro          docker    false    204    196    2184            *	           2606    24820 M   inventary_product inventary_product_preparation_site_id_bca5b6dd_fk_inventary    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.inventary_product
    ADD CONSTRAINT inventary_product_preparation_site_id_bca5b6dd_fk_inventary FOREIGN KEY (preparation_site_id) REFERENCES lacentro.inventary_preparationsite(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY lacentro.inventary_product DROP CONSTRAINT inventary_product_preparation_site_id_bca5b6dd_fk_inventary;
       lacentro          docker    false    202    204    2192            /	           2606    24910 U   oauth2_provider_accesstoken oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES lacentro.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr;
       lacentro          docker    false    2207    210    208            0	           2606    24915 N   oauth2_provider_accesstoken oauth2_provider_acce_user_id_6e4c9a65_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_user_id_6e4c9a65_fk_users_use FOREIGN KEY (user_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_acce_user_id_6e4c9a65_fk_users_use;
       lacentro          docker    false    2163    188    210            .	           2606    24896 T   oauth2_provider_accesstoken oauth2_provider_accesstoken_source_refresh_token_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_fkey FOREIGN KEY (source_refresh_token_id) REFERENCES lacentro.oauth2_provider_refreshtoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY lacentro.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_fkey;
       lacentro          docker    false    210    2229    214            -	           2606    24901 N   oauth2_provider_application oauth2_provider_appl_user_id_79829054_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_appl_user_id_79829054_fk_users_use FOREIGN KEY (user_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY lacentro.oauth2_provider_application DROP CONSTRAINT oauth2_provider_appl_user_id_79829054_fk_users_use;
       lacentro          docker    false    208    188    2163            1	           2606    24923 O   oauth2_provider_grant oauth2_provider_gran_application_id_81923564_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_gran_application_id_81923564_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES lacentro.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY lacentro.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_gran_application_id_81923564_fk_oauth2_pr;
       lacentro          docker    false    212    2207    208            2	           2606    24928 R   oauth2_provider_grant oauth2_provider_grant_user_id_e8f62af8_fk_users_usermodel_id    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_users_usermodel_id FOREIGN KEY (user_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY lacentro.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_users_usermodel_id;
       lacentro          docker    false    188    212    2163            3	           2606    24938 W   oauth2_provider_refreshtoken oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr FOREIGN KEY (access_token_id) REFERENCES lacentro.oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr;
       lacentro          docker    false    214    210    2211            4	           2606    24943 V   oauth2_provider_refreshtoken oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES lacentro.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr;
       lacentro          docker    false    208    2207    214            5	           2606    24948 O   oauth2_provider_refreshtoken oauth2_provider_refr_user_id_da837fce_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_user_id_da837fce_fk_users_use FOREIGN KEY (user_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY lacentro.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_user_id_da837fce_fk_users_use;
       lacentro          docker    false    2163    214    188            !	           2606    24705 N   users_usermodel_groups users_usermodel_grou_usermodel_id_5dda3e30_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_grou_usermodel_id_5dda3e30_fk_users_use FOREIGN KEY (usermodel_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY lacentro.users_usermodel_groups DROP CONSTRAINT users_usermodel_grou_usermodel_id_5dda3e30_fk_users_use;
       lacentro          docker    false    188    2163    190            "	           2606    24710 P   users_usermodel_groups users_usermodel_groups_group_id_21c32c00_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.users_usermodel_groups
    ADD CONSTRAINT users_usermodel_groups_group_id_21c32c00_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES lacentro.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY lacentro.users_usermodel_groups DROP CONSTRAINT users_usermodel_groups_group_id_21c32c00_fk_auth_group_id;
       lacentro          docker    false    184    190    2155            $	           2606    24724 Y   users_usermodel_user_permissions users_usermodel_user_permission_id_ca2684d8_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_permission_id_ca2684d8_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES lacentro.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_permission_id_ca2684d8_fk_auth_perm;
       lacentro          docker    false    192    2150    182            #	           2606    24719 X   users_usermodel_user_permissions users_usermodel_user_usermodel_id_bbf08559_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions
    ADD CONSTRAINT users_usermodel_user_usermodel_id_bbf08559_fk_users_use FOREIGN KEY (usermodel_id) REFERENCES lacentro.users_usermodel(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY lacentro.users_usermodel_user_permissions DROP CONSTRAINT users_usermodel_user_usermodel_id_bbf08559_fk_users_use;
       lacentro          docker    false    192    2163    188            �	      x������ � �      �	      x������ � �      �	   �  x�m�[n�@E��W�
Fi^��g�F�8hl@�'�������OY�^�w7��Zt�|�n���O���/��?��3������{�r�����?�ό=F�lĶ����/��D]�ķFײ���8+���-��
�$��ҍ��@�}xӖ|Nz�m�)R��A�U2X��%�$[�	�P6�Z(�I�n4�/� O�ъn΃��Oɾ�q���Ƈ�N�2tю	"9��7�J�0�d�}Tl_st-�����t%�YM�-ϖ�W}�h֬4f��cXףY'p��/M_I�6m10�jXuŠ��Aݔ�9�35e��U�<OM$k
"�)��� @M�ci�Q�t�+Sa�#a���K�T��H��ӭ������o�Cj���LGb��&��Z�>�V<׸��_���1���kSfHLa�����T�!�H���F�M�6~ ���&��z&�d]�\�D��k+�(I�#���=8�}cB��d���8d���8���J§����
��oL�!�L��"�T��&$���n�o|�[t_�j~�}c��j�_W��I��E~ue�����5|��KA=�t}��-=�������O\e��t���f�Ȏ�&��������O}�����1�����|�5Y;�1K*9i������>�F      �	      x������ � �      �	   �   x�e�[�� E��Ō��s�2�7E�P)��CJ�d����Z��_V���\�s�I8l��lV��	w;�K��|Q��� ����j�����^RiUY2�z�'�Y�Yc0�:?ɤR3���ۻ@�7Ɛ`����DP�_��(#�H�to��mZ��ܭhdsH�m��aŲrv��.���R���i��R��_��S���      �	   �  x���ݎ�0���S��j���ϳ�E�e"�M7m����谢�H�7��l��!����2�� ��SpmC@��O�@���`��PJ��ѓ�l�]<{{{a�ۻί�0�EA�����vq�P������k'���S�1ľV������O��g�Hq^PbA�j��w.��ƅ��"
��Gm'Ӹ��� �Z�Ѻq�m<�<�ܮ�!�`�����;�������^0���0C�9�6��h��h}J1�Ώ�;�ci.e]ӫ�lylg�/ąd�z�(I��"�Q7�)�yx��-�E���vH����u{P�6Wo����5Ƙ��9��.��RL��.��*yʉH����1bY�*��4��
�o���L��Tn�O�N����E0I�׎ts��)voMϘXe�	�9v�-�\#�%�_G6�c.]3������&�MSY�9d�veŕ�:(њ������5�U��dPUkFK�f}��Bu��~���4^�S      

      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      
      x������ � �      �	      x������ � �      �	      x������ � �      
      x������ � �      
      x������ � �      
      x������ � �      	
      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   �  x�m�[n�@E��W�
Fi^��g�F�8hl@�'�������OY�^�w7��Zt�|�n���O���/��?��3������{�r�����?�ό=F�lĶ����/��D]�ķFײ���8+���-��
�$��ҍ��@�}xӖ|Nz�m�)R��A�U2X��%�$[�	�P6�Z(�I�n4�/� O�ъn΃��Oɾ�q���Ƈ�N�2tю	"9��7�J�0�d�}Tl_st-�����t%�YM�-ϖ�W}�h֬4f��cXףY'p��/M_I�6m10�jXuŠ��Aݔ�9�35e��U�<OM$k
"�)��� @M�ci�Q�t�+Sa�#a���K�T��H��ӭ������o�Cj���LGb��&��Z�>�V<׸��_���1���kSfHLa�����T�!�H���F�M�6~ ���&��z&�d]�\�D��k+�(I�#���=8�}cB��d���8d���8���J§����
��oL�!�L��"�T��&$���n�o|�[t_�j~�}c��j�_W��I��E~ue�����5|��KA=�t}��-=�������O\e��t���f�Ȏ�&��������O}�����1�����|�5Y;�1K*9i������>�F      �	   �   x����
�@���x2�H���:@%ED��ӉҲ�(�{F���_|����DP��{�xȱ����~�?��[3�z�N�]�פ�T<�M�	�j��`�(��2��3��sU~��Y���ڜ��S؉0Ju���D��ǀ�䩜8����]Umf��u�h�,W�U��q.Rm���'���x�N      �	   �   x�e�[�� E��Ō��s�2�7E�P)��CJ�d����Z��_V���\�s�I8l��lV��	w;�K��|Q��� ����j�����^RiUY2�z�'�Y�Yc0�:?ɤR3���ۻ@�7Ɛ`����DP�_��(#�H�to��mZ��ܭhdsH�m��aŲrv��.���R���i��R��_��S���      �	   �  x���ݎ�0���S��j���<K%�"n�`ֆh���M��Zo�����͜�3�t~��8Ϸ�Ɔڍnv�o� ��i�8�<qu���OB�E�:��_������`�(�T����Y���H�E�6j��6�Ɇ����X*��|�ގ��W%P)�(��������q�.EJ"y���)�U������,#��ψ��Y��⒱���aXܴD�m�/.l�({�yd�0����1佑�����>Dm�gmC�A6Fs�u[�JXWdõ���̘r�Pl$�eB/�$C���( w�%�ez��؂��)M��)���S��a %����l��c�c�<H�=nܗp�E#�qJ��σM.|�l"R�j���> 9�������Ewo�u��B0��j�m�%�~xɼqmB5n���&��u��˅"�W�ڇs�]2T�*\�^�7�y�W�d��ܞ9B�ZYr�XS�:u$�K�
-�USt�
�&�{�v��������p�N��      �	     x�=��n�@@�<E��f�GZ5���� sI7\Jg�* O_�E�'�rnuw��2ʏ��R�h��mס����]�T"G	�fIl�%(�'WNK`:�5k#$y�Ж�j�_R?iry%�Z�"NJU�#23\��*k�fm$g_�{5��Q�E�m�[�����qr�"E����r��|h	�&o#s��_wX�һ ���5e�Z90���i���_\"jӇa��&�1�̰)���f� �1���	{�ڀ���,�r���� \�h{      �	   R   x�3�t�/(I�I-��CF\Ɯ9�%�Ŝ%(�&�ΩEI�U�L9C�՛q:�''�d���c�0�tJM�L������ �l((      �	      x�3��M-NT0�2�0��b���� E!      �	   @   x�3�����L���\�(<cKN##]C �P04�2��25�357223�60 �L+����� �f      �	   S   x�m���0����S���L��� �C���ɦ�K�����-b��ŰQ�8,�7k�|Ԓj'βB_�_9�o�u&U���      �	      x�3�L�O��K�2�LJ,*J����� H7�      �	   �   x�}�KR�0�u�9E�� ��M�"VCSI�x+���&��c	N��_��'�0B~�(KHp:�ʀU�-������N�\�k��d�'���w������}ua��
�j�'����$�2�j�6��$����|�3j�?~�D�y��xu��ٙ�����Ѕ�~vs��	��:"G�k��䆍��yJa�V�$�e�lg�]\�^�ɨ�\Ow�y*�Rg��}      �	   {  x���KO�@���+��;s��� j�V¦@� Ph��o�)��I��;9�/'�Is�4���v&����N:y2n �a�����l�6�E��+ ���϶A=���:!H詣�;�
<t�K�>���*�&ؽ1�.�Y��ôl���媄�fITMUT���@�R�
�&��~+�s���I��l�m`��t/P�>���+.Ŏ��Qg)��R��w�v;maЊz��[D��Пx�6,iܔPL�4�K#YUT��L�ߨS�C�QH4����U�u�u���F�����������٨,#E�J5;�QVF��L(J�{�M�Mi��6�3��.��{ǡ��᪄��1Kka���*:��_K����S#�V�}�4�s      �	   �   x�e��N�0  �sy
�FR
�P�6�A\�1�@q��+?�<���|��1;�k��^�Da@ޭekC�K���G좸�n2 ��� C5���j W���� &�S�\NY������(�7��n�J�z���|5�s�)̻�O	k	�~�w�RG���N9�}㛦�S;�YT�:HE���1$x��Su���J@_���I]���#@���yB��B[��.���<C�mK�M��c���i�f�O       �	      x������ � �      �	   I  x�u�[o�0����)v���{���S�	pxb����y@Q>���������O�2��Ǐl���v';���P.Ҁ��o�1DF���'��
���sS<<�~��M�]ĐN��8�k��`�z���Z��q�ǨXT�) :g`R^u��`�c�M/nۜ4�U�I����1�{���bq���siʿ�U�KG����=��	���]�q�h�:lO�e-��XT".^�II�q��(ȏ��Q�'�8��x`��W��{�T *�U�(*tɅ!ȁ�Ft�v�,�o��븑�b�vr�����~�Iňn���﹭�tf��iߡ��M      �	   �   x�]�O�0���|�I��p:� �IDE�M�EWѻo]{����^V�6֜P����搝Zd#,�6߰Z]W��Od��DlSg����;�Q�V��Yq��x��bß`a�bR?t �F��;���(�tJj�+�P-onѵ��+��z�  �J�V�Z����3�      �	      x������ � �      �	      x������ � �      �	   s   x�3�̭�M��M���K���,(M��L�N�H�M,V��K��4204�54�50�Lr�t�Ȃˈ3'195��(_��0�4�jD	�Ɯ�99�IE�h&@E����ˀ=... y�7j      �	   �  x���ݎ� �����}�3�7�R	��f�l�m޾��N��r��1��̙@w�S�SJ��Ǝ�M.93tH�����?�A�|����$�ߔ������]��Ɍ������wfI���U���<j3$�l��bt~���h>�`�K>��d�6TG-1?�hܰK��S(|��gJy���9�6B0PPbC�g�`b҃����2�m�D
�Dn�g񱸰�NI���B�a��!�����M�!js>k�z�1��m��9pYod�ɦ5;s���I}s�� ��-~���Q����5�V̖[ ���"���?oOql�#���ʠ]��͓�LM�ОG7����$Vh�*G"ܾ6���l���ET�x@���RY�?���ӻw��$C!�n����ǽ���0��z	չ�+�p��!�a�zH�ա��k����b�ΗQc���e�~�^Hū��-5��#Eh�W��M�)����������敮y��v8�Uߞ     