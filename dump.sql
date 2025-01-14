--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id;
ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse;
ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse;
ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco;
ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim;
ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user;
ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco;
ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco;
ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user;
ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id;
ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_phone_image_id_e78545c7_fk_wagtailim;
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_page_ptr_id_c3c2d719_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_p_topicpage_id_fc1de001_fk_projects_;
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_p_projectpage_id_16edc0fe_fk_projects_;
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_background_image_id_c6783694_fk_wagtailim;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammembers_tag_id_73959981_fk_taggit_ta;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammembers_content_object_id_023d4610_fk_projects_;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_photo_id_10ff7e07_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_page_ptr_id_23b42f86_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.projects_teamindexpage DROP CONSTRAINT projects_teamindexpa_page_ptr_id_3e244fbd_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializat_page_ptr_id_fa24395a_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationindexpage DROP CONSTRAINT projects_specializat_page_ptr_id_a20c5746_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializat_background_image_id_87b958ff_fk_wagtailim;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_page_ptr_id_2eccd927_fk_wagtailco;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_image_id_d50212f0_fk_wagtailim;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_icon_id_1145692d_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_background_image_id_0dfc95d3_fk_wagtailim;
ALTER TABLE ONLY public.projects_projectmetric DROP CONSTRAINT projects_projectmetr_project_id_b982bf7a_fk_projects_;
ALTER TABLE ONLY public.main_subpagemetric DROP CONSTRAINT main_subpagemetric_page_id_fae0c127_fk_main_subpage_page_ptr_id;
ALTER TABLE ONLY public.main_subpagemetric DROP CONSTRAINT main_subpagemetric_icon_id_e745bce1_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_subpage DROP CONSTRAINT main_subpage_page_ptr_id_b97f8f24_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_subpage DROP CONSTRAINT main_subpage_header_background_im_dddd1f16_fk_wagtailim;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_specialization_id_6d607455_fk_projects_;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_photo_id_ff5a2d19_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_page_ptr_id_b58fa7b7_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_newsindexpage DROP CONSTRAINT main_newsindexpage_page_ptr_id_addbf522_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_page_ptr_id_fff97024_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_icon_id_2c47f752_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_jobofferindexpage DROP CONSTRAINT main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco;
ALTER TABLE ONLY public.main_infopage DROP CONSTRAINT main_infopage_page_ptr_id_b85bdde1_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_homepage DROP CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_oldhomepage DROP CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_oldhomepage DROP CONSTRAINT main_homepage_join_us_background_i_7a97f261_fk_wagtailim;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_site_id_e3025847_fk_wagtailcore_site_id;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_page_id_ea52fbe3_fk_main_oldh;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_contactform DROP CONSTRAINT main_contactform_site_id_004d3ccf_fk_wagtailcore_site_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.wagtailsearch_querydailyhits_query_id_2185994b;
DROP INDEX public.wagtailsearch_query_query_string_e785ea07_like;
DROP INDEX public.wagtailsearch_editorspick_query_id_c6eee4a0;
DROP INDEX public.wagtailsearch_editorspick_page_id_28cbc274;
DROP INDEX public.wagtailredirects_redirect_site_id_780a0e1e;
DROP INDEX public.wagtailredirects_redirect_redirect_page_id_b5728a8f;
DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b_like;
DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b;
DROP INDEX public.wagtailimages_rendition_image_id_3e1fd774;
DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201_like;
DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201;
DROP INDEX public.wagtailimages_image_uploaded_by_user_id_5d73dc75;
DROP INDEX public.wagtailimages_image_created_at_86fa6cd4;
DROP INDEX public.wagtailimages_image_collection_id_c2f8af7e;
DROP INDEX public.wagtailforms_formsubmission_page_id_e48e93e7;
DROP INDEX public.wagtaildocs_document_uploaded_by_user_id_17258b41;
DROP INDEX public.wagtaildocs_document_collection_id_23881625;
DROP INDEX public.wagtailcore_site_root_page_id_e02fb95c;
DROP INDEX public.wagtailcore_site_hostname_96b20b46_like;
DROP INDEX public.wagtailcore_site_hostname_96b20b46;
DROP INDEX public.wagtailcore_pageviewrestriction_page_id_15a8bea6;
DROP INDEX public.wagtailcore_pageviewrestriction_groups_group_id_6460f223;
DROP INDEX public.wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a;
DROP INDEX public.wagtailcore_pagerevision_user_id_2409d2f4;
DROP INDEX public.wagtailcore_pagerevision_submitted_for_moderation_c682e44c;
DROP INDEX public.wagtailcore_pagerevision_page_id_d421cc1d;
DROP INDEX public.wagtailcore_pagerevision_created_at_66954e3b;
DROP INDEX public.wagtailcore_page_slug_e7c11b8f_like;
DROP INDEX public.wagtailcore_page_slug_e7c11b8f;
DROP INDEX public.wagtailcore_page_path_98eba2c8_like;
DROP INDEX public.wagtailcore_page_owner_id_fbf7c332;
DROP INDEX public.wagtailcore_page_live_revision_id_930bd822;
DROP INDEX public.wagtailcore_page_first_published_at_2b5dd637;
DROP INDEX public.wagtailcore_page_content_type_id_c28424df;
DROP INDEX public.wagtailcore_grouppagepermission_page_id_710b114a;
DROP INDEX public.wagtailcore_grouppagepermission_group_id_fc07e671;
DROP INDEX public.wagtailcore_groupcollectionpermission_permission_id_1b626275;
DROP INDEX public.wagtailcore_groupcollectionpermission_group_id_05d61460;
DROP INDEX public.wagtailcore_groupcollectionpermission_collection_id_5423575a;
DROP INDEX public.wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3;
DROP INDEX public.wagtailcore_collectionviewrestriction_collection_id_761908ec;
DROP INDEX public.wagtailcore_collectionview_collectionviewrestriction__47320efd;
DROP INDEX public.wagtailcore_collection_path_d848dc19_like;
DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
DROP INDEX public.taggit_tag_slug_6be58b2c_like;
DROP INDEX public.taggit_tag_name_58eb2ed9_like;
DROP INDEX public.projects_topicpage_projects_topicpage_id_fc1de001;
DROP INDEX public.projects_topicpage_projects_projectpage_id_16edc0fe;
DROP INDEX public.projects_topicpage_phone_image_id_e78545c7;
DROP INDEX public.projects_topicpage_background_image_id_c6783694;
DROP INDEX public.projects_teammemberspecializationtag_tag_id_73959981;
DROP INDEX public.projects_teammemberspecializationtag_content_object_id_023d4610;
DROP INDEX public.projects_teammember_photo_id_10ff7e07;
DROP INDEX public.projects_specializationpage_background_image_id_87b958ff;
DROP INDEX public.projects_projectpage_image_id_d50212f0;
DROP INDEX public.projects_projectpage_icon_id_1145692d;
DROP INDEX public.projects_projectpage_background_image_id_0dfc95d3;
DROP INDEX public.projects_projectmetric_project_id_b982bf7a;
DROP INDEX public.main_subpagemetric_page_id_fae0c127;
DROP INDEX public.main_subpagemetric_icon_id_e745bce1;
DROP INDEX public.main_subpage_header_background_image_id_dddd1f16;
DROP INDEX public.main_newspage_specialization_id_6d607455;
DROP INDEX public.main_newspage_photo_id_ff5a2d19;
DROP INDEX public.main_jobofferpage_icon_id_2c47f752;
DROP INDEX public.main_homepage_join_us_background_id_7a97f261;
DROP INDEX public.main_cooperatorlogo_page_id_ea52fbe3;
DROP INDEX public.main_cooperatorlogo_image_id_16147108;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.constance_config_key_baef3136_like;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_key;
ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_pkey;
ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq;
ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_pkey;
ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_query_string_key;
ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_pkey;
ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editorspick_pkey;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_pkey;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq;
ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_pkey;
ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq;
ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_pkey;
ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsubmission_pkey;
ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq;
ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_pkey;
ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_pkey;
ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_pkey;
ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageviewrestriction_pkey;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq;
ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_pkey;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_pkey;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_path_key;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppagepermission_pkey;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollectionpermission_pkey;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collectionviewrestriction_pkey;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq;
ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_pkey;
ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_path_key;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_projects_pkey;
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_proje_topicpage_id_projectpage_2b5e6777_uniq;
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_pkey;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammemberspecializationtag_pkey;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_pkey;
ALTER TABLE ONLY public.projects_teamindexpage DROP CONSTRAINT projects_teamindexpage_pkey;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializationpage_pkey;
ALTER TABLE ONLY public.projects_specializationindexpage DROP CONSTRAINT projects_specializationindexpage_pkey;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_pkey;
ALTER TABLE ONLY public.projects_projectmetric DROP CONSTRAINT projects_projectmetric_pkey;
ALTER TABLE ONLY public.main_subpagemetric DROP CONSTRAINT main_subpagemetric_pkey;
ALTER TABLE ONLY public.main_subpage DROP CONSTRAINT main_subpage_pkey;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_pkey;
ALTER TABLE ONLY public.main_newsindexpage DROP CONSTRAINT main_newsindexpage_pkey;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_pkey;
ALTER TABLE ONLY public.main_jobofferindexpage DROP CONSTRAINT main_jobofferindexpage_pkey;
ALTER TABLE ONLY public.main_infopage DROP CONSTRAINT main_infopage_pkey;
ALTER TABLE ONLY public.main_homepage DROP CONSTRAINT main_homepage_pkey1;
ALTER TABLE ONLY public.main_oldhomepage DROP CONSTRAINT main_homepage_pkey;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_site_id_key;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_pkey;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_pkey;
ALTER TABLE ONLY public.main_contactform DROP CONSTRAINT main_contactform_site_id_key;
ALTER TABLE ONLY public.main_contactform DROP CONSTRAINT main_contactform_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.constance_config DROP CONSTRAINT constance_config_pkey;
ALTER TABLE ONLY public.constance_config DROP CONSTRAINT constance_config_key_key;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.wagtailusers_userprofile ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailsearch_querydailyhits ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailsearch_query ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailsearch_editorspick ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailredirects_redirect ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailimages_rendition ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailimages_image ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailforms_formsubmission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailembeds_embed ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtaildocs_document ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_pageviewrestriction ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_pagerevision ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_page ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_grouppagepermission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_groupcollectionpermission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_collectionviewrestriction ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_collection ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects_topicpage_projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects_teammemberspecializationtag ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects_projectmetric ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_subpagemetric ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_footer ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_cooperatorlogo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_contactform ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.constance_config ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.wagtailusers_userprofile_id_seq;
DROP TABLE public.wagtailusers_userprofile;
DROP SEQUENCE public.wagtailsearch_querydailyhits_id_seq;
DROP TABLE public.wagtailsearch_querydailyhits;
DROP SEQUENCE public.wagtailsearch_query_id_seq;
DROP TABLE public.wagtailsearch_query;
DROP SEQUENCE public.wagtailsearch_editorspick_id_seq;
DROP TABLE public.wagtailsearch_editorspick;
DROP SEQUENCE public.wagtailredirects_redirect_id_seq;
DROP TABLE public.wagtailredirects_redirect;
DROP SEQUENCE public.wagtailimages_rendition_id_seq;
DROP TABLE public.wagtailimages_rendition;
DROP SEQUENCE public.wagtailimages_image_id_seq;
DROP TABLE public.wagtailimages_image;
DROP SEQUENCE public.wagtailforms_formsubmission_id_seq;
DROP TABLE public.wagtailforms_formsubmission;
DROP SEQUENCE public.wagtailembeds_embed_id_seq;
DROP TABLE public.wagtailembeds_embed;
DROP SEQUENCE public.wagtaildocs_document_id_seq;
DROP TABLE public.wagtaildocs_document;
DROP SEQUENCE public.wagtailcore_site_id_seq;
DROP TABLE public.wagtailcore_site;
DROP SEQUENCE public.wagtailcore_pageviewrestriction_id_seq;
DROP SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq;
DROP TABLE public.wagtailcore_pageviewrestriction_groups;
DROP TABLE public.wagtailcore_pageviewrestriction;
DROP SEQUENCE public.wagtailcore_pagerevision_id_seq;
DROP TABLE public.wagtailcore_pagerevision;
DROP SEQUENCE public.wagtailcore_page_id_seq;
DROP TABLE public.wagtailcore_page;
DROP SEQUENCE public.wagtailcore_grouppagepermission_id_seq;
DROP TABLE public.wagtailcore_grouppagepermission;
DROP SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq;
DROP TABLE public.wagtailcore_groupcollectionpermission;
DROP SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq;
DROP SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq;
DROP TABLE public.wagtailcore_collectionviewrestriction_groups;
DROP TABLE public.wagtailcore_collectionviewrestriction;
DROP SEQUENCE public.wagtailcore_collection_id_seq;
DROP TABLE public.wagtailcore_collection;
DROP SEQUENCE public.taggit_taggeditem_id_seq;
DROP TABLE public.taggit_taggeditem;
DROP SEQUENCE public.taggit_tag_id_seq;
DROP TABLE public.taggit_tag;
DROP SEQUENCE public.projects_topicpage_projects_id_seq;
DROP TABLE public.projects_topicpage_projects;
DROP TABLE public.projects_topicpage;
DROP SEQUENCE public.projects_teammemberspecializationtag_id_seq;
DROP TABLE public.projects_teammemberspecializationtag;
DROP TABLE public.projects_teammember;
DROP TABLE public.projects_teamindexpage;
DROP TABLE public.projects_specializationpage;
DROP TABLE public.projects_specializationindexpage;
DROP TABLE public.projects_projectpage;
DROP SEQUENCE public.projects_projectmetric_id_seq;
DROP TABLE public.projects_projectmetric;
DROP SEQUENCE public.main_subpagemetric_id_seq;
DROP TABLE public.main_subpagemetric;
DROP TABLE public.main_subpage;
DROP TABLE public.main_oldhomepage;
DROP TABLE public.main_newspage;
DROP TABLE public.main_newsindexpage;
DROP TABLE public.main_jobofferpage;
DROP TABLE public.main_jobofferindexpage;
DROP TABLE public.main_infopage;
DROP TABLE public.main_homepage;
DROP SEQUENCE public.main_footer_id_seq;
DROP TABLE public.main_footer;
DROP SEQUENCE public.main_cooperatorlogo_id_seq;
DROP TABLE public.main_cooperatorlogo;
DROP SEQUENCE public.main_contactform_id_seq;
DROP TABLE public.main_contactform;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.constance_config_id_seq;
DROP TABLE public.constance_config;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
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
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: constance_config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.constance_config (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


--
-- Name: constance_config_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.constance_config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: constance_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.constance_config_id_seq OWNED BY public.constance_config.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
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


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: main_contactform; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_contactform (
    id integer NOT NULL,
    condition_body text NOT NULL,
    condition_body_pl text,
    condition_body_en text,
    after_send_text text NOT NULL,
    after_send_text_pl text,
    after_send_text_en text,
    site_id integer
);


--
-- Name: main_contactform_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_contactform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_contactform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_contactform_id_seq OWNED BY public.main_contactform.id;


--
-- Name: main_cooperatorlogo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_cooperatorlogo (
    id integer NOT NULL,
    sort_order integer,
    image_id integer NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: main_cooperatorlogo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_cooperatorlogo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_cooperatorlogo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_cooperatorlogo_id_seq OWNED BY public.main_cooperatorlogo.id;


--
-- Name: main_footer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_footer (
    id integer NOT NULL,
    contact text NOT NULL,
    contact_pl text,
    contact_en text,
    address text NOT NULL,
    address_pl text,
    address_en text,
    how_we_work text NOT NULL,
    how_we_work_pl text,
    how_we_work_en text,
    partners text NOT NULL,
    partners_en text,
    partners_pl text,
    site_id integer
);


--
-- Name: main_footer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_footer_id_seq OWNED BY public.main_footer.id;


--
-- Name: main_homepage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_homepage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    content_pl text,
    content_en text
);


--
-- Name: main_infopage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_infopage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    content_pl text,
    content_en text,
    consent_required boolean NOT NULL
);


--
-- Name: main_jobofferindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_jobofferindexpage (
    page_ptr_id integer NOT NULL,
    cooperation character varying(500) NOT NULL,
    cooperation_pl character varying(500),
    cooperation_en character varying(500),
    recruitment text NOT NULL,
    recruitment_pl text,
    recruitment_en text
);


--
-- Name: main_jobofferpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_jobofferpage (
    page_ptr_id integer NOT NULL,
    salary character varying(50) NOT NULL,
    employment_form character varying(50) NOT NULL,
    body text NOT NULL,
    body_pl text,
    body_en text,
    icon_id integer
);


--
-- Name: main_newsindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_newsindexpage (
    page_ptr_id integer NOT NULL
);


--
-- Name: main_newspage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_newspage (
    page_ptr_id integer NOT NULL,
    headline character varying(500) NOT NULL,
    headline_pl character varying(500),
    headline_en character varying(500),
    publication_date date NOT NULL,
    body text NOT NULL,
    body_pl text,
    body_en text,
    photo_id integer,
    marked boolean NOT NULL,
    specialization_id integer,
    cta_question character varying(200) NOT NULL,
    cta_question_en character varying(200),
    cta_question_pl character varying(200)
);


--
-- Name: main_oldhomepage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_oldhomepage (
    page_ptr_id integer NOT NULL,
    header character varying(255) NOT NULL,
    header_en character varying(255),
    header_pl character varying(255),
    r_and_d_center_body character varying(256),
    r_and_d_center_headline character varying(128),
    specializations_headline character varying(128) NOT NULL,
    r_and_d_center_body_en character varying(256),
    r_and_d_center_body_pl character varying(256),
    r_and_d_center_headline_en character varying(128),
    r_and_d_center_headline_pl character varying(128),
    specializations_headline_en character varying(128),
    specializations_headline_pl character varying(128),
    join_us_background_id integer,
    join_us_body text NOT NULL,
    join_us_body_en text,
    join_us_body_pl text,
    join_us_headline character varying(128) NOT NULL,
    join_us_headline_en character varying(128),
    join_us_headline_pl character varying(128)
);


--
-- Name: main_subpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_subpage (
    page_ptr_id integer NOT NULL,
    header_subtitle text NOT NULL,
    header_subtitle_pl text,
    header_subtitle_en text,
    header_external_link character varying(200) NOT NULL,
    content text NOT NULL,
    content_pl text,
    content_en text,
    header_background_image_id integer
);


--
-- Name: main_subpagemetric; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_subpagemetric (
    id integer NOT NULL,
    sort_order integer,
    value character varying(31) NOT NULL,
    value_pl character varying(31),
    value_en character varying(31),
    property_name character varying(63) NOT NULL,
    property_name_pl character varying(63),
    property_name_en character varying(63),
    icon_id integer,
    page_id integer NOT NULL
);


--
-- Name: main_subpagemetric_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_subpagemetric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_subpagemetric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_subpagemetric_id_seq OWNED BY public.main_subpagemetric.id;


--
-- Name: projects_projectmetric; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_projectmetric (
    id integer NOT NULL,
    sort_order integer,
    value character varying(31) NOT NULL,
    property_name character varying(63) NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: projects_projectmetric_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_projectmetric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_projectmetric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_projectmetric_id_seq OWNED BY public.projects_projectmetric.id;


--
-- Name: projects_projectpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_projectpage (
    page_ptr_id integer NOT NULL,
    subtitle character varying(255) NOT NULL,
    subtitle_en character varying(255),
    subtitle_pl character varying(255),
    challenge text NOT NULL,
    challenge_en text,
    challenge_pl text,
    process text,
    process_en text,
    process_pl text,
    quote text NOT NULL,
    quote_en text,
    quote_pl text,
    self_initiated boolean NOT NULL,
    image_id integer,
    icon_id integer,
    short_name character varying(32) NOT NULL,
    background_image_id integer,
    project_url character varying(200) NOT NULL,
    masonry_featured_x boolean NOT NULL,
    masonry_featured_y boolean NOT NULL,
    masonry_title_dark boolean NOT NULL,
    masonry_featured_mobile boolean NOT NULL,
    quote_author text NOT NULL
);


--
-- Name: projects_specializationindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_specializationindexpage (
    page_ptr_id integer NOT NULL
);


--
-- Name: projects_specializationpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_specializationpage (
    page_ptr_id integer NOT NULL,
    how_we_work text NOT NULL,
    how_we_work_en text,
    how_we_work_pl text,
    case_study text,
    case_study_en text,
    case_study_pl text,
    tools text,
    tools_en text,
    tools_pl text,
    long_name_en character varying(64),
    long_name_pl character varying(64),
    background_image_id integer,
    short_description text NOT NULL,
    short_description_en text,
    short_description_pl text
);


--
-- Name: projects_teamindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_teamindexpage (
    page_ptr_id integer NOT NULL,
    who_we_are text NOT NULL,
    who_we_are_pl text,
    who_we_are_en text,
    our_values text NOT NULL,
    our_values_pl text,
    our_values_en text
);


--
-- Name: projects_teammember; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_teammember (
    page_ptr_id integer NOT NULL,
    name character varying(128) NOT NULL,
    photo_id integer,
    long_description character varying(516) NOT NULL,
    long_description_en character varying(516),
    long_description_pl character varying(516),
    short_description character varying(128) NOT NULL,
    short_description_en character varying(128),
    short_description_pl character varying(128)
);


--
-- Name: projects_teammemberspecializationtag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_teammemberspecializationtag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: projects_teammemberspecializationtag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_teammemberspecializationtag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_teammemberspecializationtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_teammemberspecializationtag_id_seq OWNED BY public.projects_teammemberspecializationtag.id;


--
-- Name: projects_topicpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_topicpage (
    page_ptr_id integer NOT NULL,
    marked boolean NOT NULL,
    content text NOT NULL,
    content_pl text,
    content_en text,
    background_image_id integer,
    phone_image_id integer
);


--
-- Name: projects_topicpage_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_topicpage_projects (
    id integer NOT NULL,
    topicpage_id integer NOT NULL,
    projectpage_id integer NOT NULL
);


--
-- Name: projects_topicpage_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_topicpage_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_topicpage_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_topicpage_projects_id_seq OWNED BY public.projects_topicpage_projects.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    seo_title_pl character varying(255),
    seo_title_en character varying(255),
    search_description_pl text,
    search_description_en text,
    url_path_pl text,
    url_path_en text,
    slug_pl character varying(255),
    slug_en character varying(255),
    title_pl character varying(255),
    title_en character varying(255),
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(255),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL
);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: constance_config id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config ALTER COLUMN id SET DEFAULT nextval('public.constance_config_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: main_contactform id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform ALTER COLUMN id SET DEFAULT nextval('public.main_contactform_id_seq'::regclass);


--
-- Name: main_cooperatorlogo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo ALTER COLUMN id SET DEFAULT nextval('public.main_cooperatorlogo_id_seq'::regclass);


--
-- Name: main_footer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer ALTER COLUMN id SET DEFAULT nextval('public.main_footer_id_seq'::regclass);


--
-- Name: main_subpagemetric id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric ALTER COLUMN id SET DEFAULT nextval('public.main_subpagemetric_id_seq'::regclass);


--
-- Name: projects_projectmetric id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric ALTER COLUMN id SET DEFAULT nextval('public.projects_projectmetric_id_seq'::regclass);


--
-- Name: projects_teammemberspecializationtag id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag ALTER COLUMN id SET DEFAULT nextval('public.projects_teammemberspecializationtag_id_seq'::regclass);


--
-- Name: projects_topicpage_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects ALTER COLUMN id SET DEFAULT nextval('public.projects_topicpage_projects_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	2	1
3	1	2
4	1	3
5	1	4
6	2	2
7	2	3
8	2	4
9	1	5
10	1	6
11	1	7
12	2	5
13	2	6
14	2	7
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can access Wagtail admin	2	access_admin
2	Can add document	3	add_document
3	Can change document	3	change_document
4	Can delete document	3	delete_document
5	Can add image	4	add_image
6	Can change image	4	change_image
7	Can delete image	4	delete_image
8	Can add log entry	5	add_logentry
9	Can change log entry	5	change_logentry
10	Can delete log entry	5	delete_logentry
11	Can view log entry	5	view_logentry
12	Can change config	6	change_config
13	Can add permission	7	add_permission
14	Can change permission	7	change_permission
15	Can delete permission	7	delete_permission
16	Can view permission	7	view_permission
17	Can add group	8	add_group
18	Can change group	8	change_group
19	Can delete group	8	delete_group
20	Can view group	8	view_group
21	Can add user	9	add_user
22	Can change user	9	change_user
23	Can delete user	9	delete_user
24	Can view user	9	view_user
25	Can add content type	10	add_contenttype
26	Can change content type	10	change_contenttype
27	Can delete content type	10	delete_contenttype
28	Can view content type	10	view_contenttype
29	Can add session	11	add_session
30	Can change session	11	change_session
31	Can delete session	11	delete_session
32	Can view session	11	view_session
33	Can add constance	12	add_constance
34	Can change constance	12	change_constance
35	Can delete constance	12	delete_constance
36	Can view constance	12	view_constance
37	Can add form submission	13	add_formsubmission
38	Can change form submission	13	change_formsubmission
39	Can delete form submission	13	delete_formsubmission
40	Can view form submission	13	view_formsubmission
41	Can add redirect	14	add_redirect
42	Can change redirect	14	change_redirect
43	Can delete redirect	14	delete_redirect
44	Can view redirect	14	view_redirect
45	Can add embed	15	add_embed
46	Can change embed	15	change_embed
47	Can delete embed	15	delete_embed
48	Can view embed	15	view_embed
49	Can add user profile	16	add_userprofile
50	Can change user profile	16	change_userprofile
51	Can delete user profile	16	delete_userprofile
52	Can view user profile	16	view_userprofile
53	Can view document	3	view_document
54	Can view image	4	view_image
55	Can add rendition	17	add_rendition
56	Can change rendition	17	change_rendition
57	Can delete rendition	17	delete_rendition
58	Can view rendition	17	view_rendition
59	Can add query	18	add_query
60	Can change query	18	change_query
61	Can delete query	18	delete_query
62	Can view query	18	view_query
63	Can add Query Daily Hits	19	add_querydailyhits
64	Can change Query Daily Hits	19	change_querydailyhits
65	Can delete Query Daily Hits	19	delete_querydailyhits
66	Can view Query Daily Hits	19	view_querydailyhits
67	Can add page	1	add_page
68	Can change page	1	change_page
69	Can delete page	1	delete_page
70	Can view page	1	view_page
71	Can add group page permission	20	add_grouppagepermission
72	Can change group page permission	20	change_grouppagepermission
73	Can delete group page permission	20	delete_grouppagepermission
74	Can view group page permission	20	view_grouppagepermission
75	Can add page revision	21	add_pagerevision
76	Can change page revision	21	change_pagerevision
77	Can delete page revision	21	delete_pagerevision
78	Can view page revision	21	view_pagerevision
79	Can add page view restriction	22	add_pageviewrestriction
80	Can change page view restriction	22	change_pageviewrestriction
81	Can delete page view restriction	22	delete_pageviewrestriction
82	Can view page view restriction	22	view_pageviewrestriction
83	Can add site	23	add_site
84	Can change site	23	change_site
85	Can delete site	23	delete_site
86	Can view site	23	view_site
87	Can add collection	24	add_collection
88	Can change collection	24	change_collection
89	Can delete collection	24	delete_collection
90	Can view collection	24	view_collection
91	Can add group collection permission	25	add_groupcollectionpermission
92	Can change group collection permission	25	change_groupcollectionpermission
93	Can delete group collection permission	25	delete_groupcollectionpermission
94	Can view group collection permission	25	view_groupcollectionpermission
95	Can add collection view restriction	26	add_collectionviewrestriction
96	Can change collection view restriction	26	change_collectionviewrestriction
97	Can delete collection view restriction	26	delete_collectionviewrestriction
98	Can view collection view restriction	26	view_collectionviewrestriction
99	Can add Tag	27	add_tag
100	Can change Tag	27	change_tag
101	Can delete Tag	27	delete_tag
102	Can view Tag	27	view_tag
103	Can add Tagged Item	28	add_taggeditem
104	Can change Tagged Item	28	change_taggeditem
105	Can delete Tagged Item	28	delete_taggeditem
106	Can view Tagged Item	28	view_taggeditem
107	Can add home page	29	add_homepage
108	Can change home page	29	change_homepage
109	Can delete home page	29	delete_homepage
110	Can view home page	29	view_homepage
111	Can add project page	30	add_projectpage
112	Can change project page	30	change_projectpage
113	Can delete project page	30	delete_projectpage
114	Can view project page	30	view_projectpage
115	Can add specialization page	31	add_specializationpage
116	Can change specialization page	31	change_specializationpage
117	Can delete specialization page	31	delete_specializationpage
118	Can view specialization page	31	view_specializationpage
119	Can add specialization index page	32	add_specializationindexpage
120	Can change specialization index page	32	change_specializationindexpage
121	Can delete specialization index page	32	delete_specializationindexpage
122	Can view specialization index page	32	view_specializationindexpage
123	Can add project metric	33	add_projectmetric
124	Can change project metric	33	change_projectmetric
125	Can delete project metric	33	delete_projectmetric
126	Can view project metric	33	view_projectmetric
127	Can add news page	34	add_newspage
128	Can change news page	34	change_newspage
129	Can delete news page	34	delete_newspage
130	Can view news page	34	view_newspage
131	Can add job offer page	35	add_jobofferpage
132	Can change job offer page	35	change_jobofferpage
133	Can delete job offer page	35	delete_jobofferpage
134	Can view job offer page	35	view_jobofferpage
135	Can add job offer index page	36	add_jobofferindexpage
136	Can change job offer index page	36	change_jobofferindexpage
137	Can delete job offer index page	36	delete_jobofferindexpage
138	Can view job offer index page	36	view_jobofferindexpage
139	Can add news index page	37	add_newsindexpage
140	Can change news index page	37	change_newsindexpage
141	Can delete news index page	37	delete_newsindexpage
142	Can view news index page	37	view_newsindexpage
143	Can add cooperator logo	38	add_cooperatorlogo
144	Can change cooperator logo	38	change_cooperatorlogo
145	Can delete cooperator logo	38	delete_cooperatorlogo
146	Can view cooperator logo	38	view_cooperatorlogo
147	Can add rodo pass advert	39	add_rodopassadvert
148	Can change rodo pass advert	39	change_rodopassadvert
149	Can delete rodo pass advert	39	delete_rodopassadvert
150	Can view rodo pass advert	39	view_rodopassadvert
151	Can add partner logo	40	add_partnerlogo
152	Can change partner logo	40	change_partnerlogo
153	Can delete partner logo	40	delete_partnerlogo
154	Can view partner logo	40	view_partnerlogo
155	Can add footer	41	add_footer
156	Can change footer	41	change_footer
157	Can delete footer	41	delete_footer
158	Can view footer	41	view_footer
159	Can add team member specialization tag	42	add_teammemberspecializationtag
160	Can change team member specialization tag	42	change_teammemberspecializationtag
161	Can delete team member specialization tag	42	delete_teammemberspecializationtag
162	Can view team member specialization tag	42	view_teammemberspecializationtag
163	Can add team index page	43	add_teamindexpage
164	Can change team index page	43	change_teamindexpage
165	Can delete team index page	43	delete_teamindexpage
166	Can view team index page	43	view_teamindexpage
167	Can add team member	44	add_teammember
168	Can change team member	44	change_teammember
169	Can delete team member	44	delete_teammember
170	Can view team member	44	view_teammember
171	Can add info page	45	add_infopage
172	Can change info page	45	change_infopage
173	Can delete info page	45	delete_infopage
174	Can view info page	45	view_infopage
175	Can add topic page	46	add_topicpage
176	Can change topic page	46	change_topicpage
177	Can delete topic page	46	delete_topicpage
178	Can view topic page	46	view_topicpage
179	Can add contact form	47	add_contactform
180	Can change contact form	47	change_contactform
181	Can delete contact form	47	delete_contactform
182	Can view contact form	47	view_contactform
183	Can add old home page	29	add_oldhomepage
184	Can change old home page	29	change_oldhomepage
185	Can delete old home page	29	delete_oldhomepage
186	Can view old home page	29	view_oldhomepage
187	Can add home page	48	add_homepage
188	Can change home page	48	change_homepage
189	Can delete home page	48	delete_homepage
190	Can view home page	48	view_homepage
191	Can add sub page	49	add_subpage
192	Can change sub page	49	change_subpage
193	Can delete sub page	49	delete_subpage
194	Can view sub page	49	view_subpage
195	Can add sub page metric	50	add_subpagemetric
196	Can change sub page metric	50	change_subpagemetric
197	Can delete sub page metric	50	delete_subpagemetric
198	Can view sub page metric	50	view_subpagemetric
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
38	pbkdf2_sha256$150000$rkP0YVUu3tnN$fDvmcXB2SAIqK16Tr9TSHrJNtzjDMsunJl86P/njnGw=	2019-07-17 13:12:20.139827+02	t	admin				t	t	2019-07-17 13:09:17.448775+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: constance_config; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.constance_config (id, key, value) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailadmin	admin
3	wagtaildocs	document
4	wagtailimages	image
5	admin	logentry
6	constance	config
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
12	database	constance
13	wagtailforms	formsubmission
14	wagtailredirects	redirect
15	wagtailembeds	embed
16	wagtailusers	userprofile
17	wagtailimages	rendition
18	wagtailsearch	query
19	wagtailsearch	querydailyhits
20	wagtailcore	grouppagepermission
21	wagtailcore	pagerevision
22	wagtailcore	pageviewrestriction
23	wagtailcore	site
24	wagtailcore	collection
25	wagtailcore	groupcollectionpermission
26	wagtailcore	collectionviewrestriction
27	taggit	tag
28	taggit	taggeditem
30	projects	projectpage
31	projects	specializationpage
32	projects	specializationindexpage
33	projects	projectmetric
34	main	newspage
35	main	jobofferpage
36	main	jobofferindexpage
37	main	newsindexpage
38	main	cooperatorlogo
39	main	rodopassadvert
40	main	partnerlogo
41	main	footer
42	projects	teammemberspecializationtag
43	projects	teamindexpage
44	projects	teammember
45	main	infopage
46	projects	topicpage
47	main	contactform
29	main	oldhomepage
48	main	homepage
49	main	subpage
50	main	subpagemetric
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-05-20 11:01:31.006167+02
2	auth	0001_initial	2019-05-20 11:01:31.12972+02
3	admin	0001_initial	2019-05-20 11:01:31.283144+02
4	admin	0002_logentry_remove_auto_add	2019-05-20 11:01:31.325779+02
5	admin	0003_logentry_add_action_flag_choices	2019-05-20 11:01:31.338674+02
6	contenttypes	0002_remove_content_type_name	2019-05-20 11:01:31.370891+02
7	auth	0002_alter_permission_name_max_length	2019-05-20 11:01:31.378686+02
8	auth	0003_alter_user_email_max_length	2019-05-20 11:01:31.392596+02
9	auth	0004_alter_user_username_opts	2019-05-20 11:01:31.408143+02
10	auth	0005_alter_user_last_login_null	2019-05-20 11:01:31.41963+02
11	auth	0006_require_contenttypes_0002	2019-05-20 11:01:31.422248+02
12	auth	0007_alter_validators_add_error_messages	2019-05-20 11:01:31.434605+02
13	auth	0008_alter_user_username_max_length	2019-05-20 11:01:31.450145+02
14	auth	0009_alter_user_last_name_max_length	2019-05-20 11:01:31.467729+02
15	auth	0010_alter_group_name_max_length	2019-05-20 11:01:31.480962+02
16	auth	0011_update_proxy_permissions	2019-05-20 11:01:31.502422+02
17	database	0001_initial	2019-05-20 11:01:31.534418+02
18	wagtailcore	0001_initial	2019-05-20 11:01:31.797097+02
19	wagtailcore	0002_initial_data	2019-05-20 11:01:31.799028+02
20	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2019-05-20 11:01:31.80071+02
21	wagtailcore	0004_page_locked	2019-05-20 11:01:31.802394+02
22	wagtailcore	0005_add_page_lock_permission_to_moderators	2019-05-20 11:01:31.803886+02
23	wagtailcore	0006_add_lock_page_permission	2019-05-20 11:01:31.805496+02
24	wagtailcore	0007_page_latest_revision_created_at	2019-05-20 11:01:31.806897+02
25	wagtailcore	0008_populate_latest_revision_created_at	2019-05-20 11:01:31.808186+02
26	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2019-05-20 11:01:31.809906+02
27	wagtailcore	0010_change_page_owner_to_null_on_delete	2019-05-20 11:01:31.811366+02
28	wagtailcore	0011_page_first_published_at	2019-05-20 11:01:31.81294+02
29	wagtailcore	0012_extend_page_slug_field	2019-05-20 11:01:31.814875+02
30	wagtailcore	0013_update_golive_expire_help_text	2019-05-20 11:01:31.816653+02
31	wagtailcore	0014_add_verbose_name	2019-05-20 11:01:31.818448+02
32	wagtailcore	0015_add_more_verbose_names	2019-05-20 11:01:31.820176+02
33	wagtailcore	0016_change_page_url_path_to_text_field	2019-05-20 11:01:31.821984+02
34	wagtailcore	0017_change_edit_page_permission_description	2019-05-20 11:01:31.961978+02
35	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2019-05-20 11:01:31.982614+02
36	wagtailcore	0019_verbose_names_cleanup	2019-05-20 11:01:32.044654+02
37	wagtailcore	0020_add_index_on_page_first_published_at	2019-05-20 11:01:32.064726+02
38	wagtailcore	0021_capitalizeverbose	2019-05-20 11:01:32.566139+02
39	wagtailcore	0022_add_site_name	2019-05-20 11:01:32.586331+02
40	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2019-05-20 11:01:32.619413+02
41	wagtailcore	0024_collection	2019-05-20 11:01:32.648911+02
42	wagtailcore	0025_collection_initial_data	2019-05-20 11:01:32.68936+02
43	wagtailcore	0026_group_collection_permission	2019-05-20 11:01:32.724928+02
44	wagtailcore	0027_fix_collection_path_collation	2019-05-20 11:01:32.795176+02
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2019-05-20 11:01:32.834171+02
46	wagtailcore	0028_merge	2019-05-20 11:01:32.838408+02
47	wagtailcore	0029_unicode_slugfield_dj19	2019-05-20 11:01:32.858497+02
48	wagtailcore	0030_index_on_pagerevision_created_at	2019-05-20 11:01:32.877779+02
49	wagtailcore	0031_add_page_view_restriction_types	2019-05-20 11:01:32.95152+02
50	wagtailcore	0032_add_bulk_delete_page_permission	2019-05-20 11:01:33.006755+02
51	wagtailcore	0033_remove_golive_expiry_help_text	2019-05-20 11:01:33.037016+02
52	wagtailcore	0034_page_live_revision	2019-05-20 11:01:33.056547+02
53	wagtailcore	0035_page_last_published_at	2019-05-20 11:01:33.089929+02
54	wagtailcore	0036_populate_page_last_published_at	2019-05-20 11:01:33.111545+02
55	wagtailcore	0037_set_page_owner_editable	2019-05-20 11:01:33.144489+02
56	wagtailcore	0038_make_first_published_at_editable	2019-05-20 11:01:33.175698+02
57	wagtailcore	0039_collectionviewrestriction	2019-05-20 11:01:33.250623+02
58	wagtailcore	0040_page_draft_title	2019-05-20 11:01:33.497587+02
59	wagtailcore	0041_group_collection_permissions_verbose_name_plural	2019-05-20 11:01:33.515806+02
60	main	0001_initial	2019-05-20 11:01:33.540733+02
61	main	0002_auto_20190515_1140	2019-05-20 11:01:33.581301+02
62	projects	0001_initial	2019-05-20 11:01:33.639243+02
63	projects	0002_projectmetric_specializationindexpage	2019-05-20 11:01:33.702431+02
64	projects	0002_auto_20190515_1207	2019-05-20 11:01:33.801566+02
65	projects	0003_merge_20190515_1350	2019-05-20 11:01:33.804998+02
66	projects	0004_auto_20190520_1059	2019-05-20 11:01:34.331318+02
67	sessions	0001_initial	2019-05-20 11:01:34.352463+02
68	taggit	0001_initial	2019-05-20 11:01:34.441419+02
69	taggit	0002_auto_20150616_2121	2019-05-20 11:01:34.503155+02
70	wagtailadmin	0001_create_admin_access_permissions	2019-05-20 11:01:34.551721+02
71	wagtaildocs	0001_initial	2019-05-20 11:01:34.582463+02
72	wagtaildocs	0002_initial_data	2019-05-20 11:01:34.648299+02
73	wagtaildocs	0003_add_verbose_names	2019-05-20 11:01:34.707281+02
74	wagtaildocs	0004_capitalizeverbose	2019-05-20 11:01:34.804868+02
75	wagtaildocs	0005_document_collection	2019-05-20 11:01:34.851113+02
76	wagtaildocs	0006_copy_document_permissions_to_collections	2019-05-20 11:01:34.906852+02
77	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2019-05-20 11:01:34.945378+02
78	wagtaildocs	0007_merge	2019-05-20 11:01:34.947932+02
79	wagtaildocs	0008_document_file_size	2019-05-20 11:01:34.970797+02
80	wagtaildocs	0009_document_verbose_name_plural	2019-05-20 11:01:34.990442+02
81	wagtaildocs	0010_document_file_hash	2019-05-20 11:01:35.030507+02
82	wagtailembeds	0001_initial	2019-05-20 11:01:35.07587+02
83	wagtailembeds	0002_add_verbose_names	2019-05-20 11:01:35.090222+02
84	wagtailembeds	0003_capitalizeverbose	2019-05-20 11:01:35.097469+02
85	wagtailembeds	0004_embed_verbose_name_plural	2019-05-20 11:01:35.104115+02
86	wagtailembeds	0005_specify_thumbnail_url_max_length	2019-05-20 11:01:35.112637+02
87	wagtailforms	0001_initial	2019-05-20 11:01:35.148901+02
88	wagtailforms	0002_add_verbose_names	2019-05-20 11:01:35.19291+02
89	wagtailforms	0003_capitalizeverbose	2019-05-20 11:01:35.220199+02
90	wagtailimages	0001_initial	2019-05-20 11:01:35.443512+02
91	wagtailimages	0002_initial_data	2019-05-20 11:01:35.44547+02
92	wagtailimages	0003_fix_focal_point_fields	2019-05-20 11:01:35.447394+02
93	wagtailimages	0004_make_focal_point_key_not_nullable	2019-05-20 11:01:35.449679+02
94	wagtailimages	0005_make_filter_spec_unique	2019-05-20 11:01:35.451637+02
95	wagtailimages	0006_add_verbose_names	2019-05-20 11:01:35.453978+02
96	wagtailimages	0007_image_file_size	2019-05-20 11:01:35.456326+02
97	wagtailimages	0008_image_created_at_index	2019-05-20 11:01:35.458914+02
98	wagtailimages	0009_capitalizeverbose	2019-05-20 11:01:35.461538+02
99	wagtailimages	0010_change_on_delete_behaviour	2019-05-20 11:01:35.46363+02
100	wagtailimages	0011_image_collection	2019-05-20 11:01:35.465964+02
101	wagtailimages	0012_copy_image_permissions_to_collections	2019-05-20 11:01:35.467945+02
102	wagtailimages	0013_make_rendition_upload_callable	2019-05-20 11:01:35.469851+02
103	wagtailimages	0014_add_filter_spec_field	2019-05-20 11:01:35.471885+02
104	wagtailimages	0015_fill_filter_spec_field	2019-05-20 11:01:35.474032+02
105	wagtailimages	0016_deprecate_rendition_filter_relation	2019-05-20 11:01:35.476198+02
106	wagtailimages	0017_reduce_focal_point_key_max_length	2019-05-20 11:01:35.478292+02
107	wagtailimages	0018_remove_rendition_filter	2019-05-20 11:01:35.48012+02
108	wagtailimages	0019_delete_filter	2019-05-20 11:01:35.483022+02
109	wagtailimages	0020_add-verbose-name	2019-05-20 11:01:35.485999+02
110	wagtailimages	0021_image_file_hash	2019-05-20 11:01:35.489016+02
111	wagtailredirects	0001_initial	2019-05-20 11:01:35.60097+02
112	wagtailredirects	0002_add_verbose_names	2019-05-20 11:01:35.702083+02
113	wagtailredirects	0003_make_site_field_editable	2019-05-20 11:01:35.749971+02
114	wagtailredirects	0004_set_unique_on_path_and_site	2019-05-20 11:01:35.808705+02
115	wagtailredirects	0005_capitalizeverbose	2019-05-20 11:01:35.971406+02
116	wagtailredirects	0006_redirect_increase_max_length	2019-05-20 11:01:36.00096+02
117	wagtailsearch	0001_initial	2019-05-20 11:01:36.127996+02
118	wagtailsearch	0002_add_verbose_names	2019-05-20 11:01:36.263168+02
119	wagtailsearch	0003_remove_editors_pick	2019-05-20 11:01:36.303184+02
120	wagtailsearch	0004_querydailyhits_verbose_name_plural	2019-05-20 11:01:36.311004+02
121	wagtailusers	0001_initial	2019-05-20 11:01:36.359175+02
122	wagtailusers	0002_add_verbose_name_on_userprofile	2019-05-20 11:01:36.41831+02
123	wagtailusers	0003_add_verbose_names	2019-05-20 11:01:36.444171+02
124	wagtailusers	0004_capitalizeverbose	2019-05-20 11:01:36.507822+02
125	wagtailusers	0005_make_related_name_wagtail_specific	2019-05-20 11:01:36.619754+02
126	wagtailusers	0006_userprofile_prefered_language	2019-05-20 11:01:36.65685+02
127	wagtailusers	0007_userprofile_current_time_zone	2019-05-20 11:01:36.703065+02
128	wagtailusers	0008_userprofile_avatar	2019-05-20 11:01:36.745493+02
129	wagtailusers	0009_userprofile_verbose_name_plural	2019-05-20 11:01:36.772797+02
130	wagtailimages	0001_squashed_0021	2019-05-20 11:01:36.780821+02
131	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2019-05-20 11:01:36.784923+02
132	main	0003_newspage	2019-05-23 18:18:37.642259+02
133	main	0004_jobofferindexpage_jobofferpage_newsindexpage	2019-05-24 16:00:50.277799+02
134	main	0005_auto_20190528_1022	2019-05-28 10:23:05.742186+02
135	projects	0005_projectpage_self_initiated	2019-05-28 10:23:05.834943+02
136	main	0006_auto_20190528_1024	2019-05-28 10:24:47.546851+02
137	main	0007_rodopassadvert	2019-05-28 14:47:05.369549+02
140	main	0008_footer	2019-05-28 15:47:43.864087+02
141	main	0009_auto_20190529_1031	2019-05-29 10:39:13.189401+02
142	projects	0006_auto_20190529_1157	2019-05-29 11:57:59.984049+02
143	projects	0007_teammember_photo	2019-05-29 12:57:47.895136+02
144	projects	0008_auto_20190530_1617	2019-05-30 16:17:14.458316+02
145	projects	0009_auto_20190530_1630	2019-05-30 16:30:08.606676+02
146	main	0010_newspage_marked	2019-05-31 14:32:07.90285+02
147	projects	0008_auto_20190603_1117	2019-06-03 11:21:26.196642+02
148	main	0011_auto_20190603_1326	2019-06-04 09:14:56.961808+02
149	projects	0009_auto_20190603_1358	2019-06-04 09:14:57.238824+02
150	projects	0010_auto_20190612_1325	2019-06-12 14:33:43.395649+02
151	main	0012_newspage_specialization	2019-06-13 15:48:04.862773+02
152	projects	0011_projectpage_background_image	2019-06-14 10:24:58.566781+02
153	main	0013_auto_20190614_1211	2019-06-14 15:27:34.285105+02
154	projects	0012_auto_20190614_1440	2019-06-14 15:27:34.481147+02
155	main	0014_infopage_consent_required	2019-06-17 12:21:55.890651+02
156	projects	0013_auto_20190617_1117	2019-06-17 12:21:56.256852+02
157	main	0015_auto_20190617_1238	2019-06-17 13:57:22.974536+02
158	projects	0014_auto_20190617_1238	2019-06-17 13:57:23.415647+02
159	projects	0015_auto_20190618_1037	2019-06-18 11:07:59.151257+02
160	main	0016_auto_20190624_1012	2019-06-26 09:56:52.237203+02
161	projects	0016_auto_20190625_1423	2019-06-26 09:56:52.398419+02
162	main	0017_auto_20190627_1243	2019-07-03 18:14:10.220321+02
163	main	0018_contactform	2019-07-03 18:14:10.338326+02
164	main	0019_auto_20190702_1324	2019-07-03 18:14:10.565873+02
165	projects	0017_topicpage_phone_image	2019-07-03 18:14:10.728447+02
166	main	0020_auto_20190705_1018	2019-07-05 19:58:06.036616+02
167	projects	0018_projectpage_project_url	2019-07-05 19:58:06.113653+02
168	projects	0019_auto_20190705_1206	2019-07-05 19:58:06.38364+02
169	projects	0020_projectpage_masonry_featured_mobile	2019-07-05 19:58:06.434193+02
170	projects	0021_auto_20190705_1440	2019-07-05 19:58:06.620217+02
171	projects	0022_auto_20190705_1532	2019-07-05 19:58:06.894624+02
172	main	0021_auto_20190708_1302	2019-07-09 13:47:08.618575+02
173	projects	0023_auto_20190708_1030	2019-07-09 13:47:08.866421+02
174	projects	0024_auto_20190708_1302	2019-07-09 13:47:09.18877+02
175	projects	0025_auto_20190709_0905	2019-07-09 13:47:09.315286+02
176	projects	0026_auto_20190709_0932	2019-07-09 13:47:09.552066+02
177	main	0022_auto_20190709_1230	2019-07-10 14:21:48.693449+02
178	main	0023_homepage	2019-07-10 14:21:48.788612+02
179	main	0024_auto_20190710_1237	2019-07-10 14:21:48.929101+02
180	main	0025_subpage	2019-07-12 13:03:00.76154+02
181	main	0026_auto_20190711_1459	2019-07-12 13:03:00.787846+02
182	main	0026_auto_20190712_1058	2019-07-12 13:03:00.951459+02
183	main	0027_auto_20190712_1240	2019-07-12 13:03:01.145853+02
184	main	0025_subpage_squashed_0026_auto_20190711_1459	2019-07-12 13:03:01.155786+02
185	main	0028_auto_20190715_1120	2019-07-15 12:31:08.257608+02
186	main	0029_auto_20190715_1136	2019-07-15 12:31:08.421504+02
187	main	0030_subpagemetric	2019-07-16 13:53:23.337572+02
188	main	0031_auto_20190716_1238	2019-07-16 13:53:23.539806+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
g1j49tld9wwz6p4pk3m8xdl6ncu4vyh7	YmYzZGNjZTBmN2ZkNGM4ZWZlM2U2N2Q2ZGVmNmExMmUwMGU0MzljMTp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmVmMzEyYjdjODhiYzY2ZmU2YzE1N2RiMTJhNGUzZTU1Nzc3MTVkNyJ9	2019-07-31 13:12:20.146391+02
\.


--
-- Data for Name: main_contactform; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_contactform (id, condition_body, condition_body_pl, condition_body_en, after_send_text, after_send_text_pl, after_send_text_en, site_id) FROM stdin;
1	<p>Chcesz <b>zmieniać świat</b> przez <b>technologie</b>?</p><p></p><p>Interesuje Cię <b>innowacyjny projekt</b>?</p>	<p>Chcesz <b>zmieniać świat</b> przez <b>technologie</b>?</p><p></p><p>Interesuje Cię <b>innowacyjny projekt</b>?</p>		<p>Dziękujemy za kontakt. Odpowiemy najszybciej, jak to możliwe. Maksymalnie w przeciągu 48h.</p>	<p>Dziękujemy za kontakt. Odpowiemy najszybciej, jak to możliwe. Maksymalnie w przeciągu 48h.</p>	<p>Dziękujemy za kontakt. Odpowiemy najszybciej, jak to możliwe. Maksymalnie w przeciągu 48h.</p>	1
\.


--
-- Data for Name: main_cooperatorlogo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_cooperatorlogo (id, sort_order, image_id, page_id) FROM stdin;
4	0	41	3
10	1	47	3
5	2	42	3
9	3	46	3
8	4	45	3
7	5	44	3
12	6	51	3
6	7	43	3
\.


--
-- Data for Name: main_footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_footer (id, contact, contact_pl, contact_en, address, address_pl, address_en, how_we_work, how_we_work_pl, how_we_work_en, partners, partners_en, partners_pl, site_id) FROM stdin;
2	<p>tel. +48 734 482 835<br/>e-mail: kontakt@laboratorium.ee<br/></p>	<p>tel. +48 734 482 835<br/>e-mail: kontakt@laboratorium.ee<br/></p>		<p>Aleja 3 maja 2/49<br/>00-391 Warszawa<br/>NIP: 5252593479<br/>REGON: 147415997<br/>Wykorzystujemy pliki cookies w celu zapewnienia optymalnego działania strony internetowej oraz ułatwienia korzystania z naszego serwisu. Pozwala to m.in. dostosować wygląd strony internetowej do Waszych preferencji. Plikami cookies możesz zarządzać z poziomu wykorzystywanej przeglądarki internetowej.<br/>Szczegóły znajdziesz na podstronie:</p><p><a href="https://laboratorium.ee/polityka-prywatno%C5%9Bci/">Polityka prywatności</a></p>	<p>Aleja 3 maja 2/49<br/>00-391 Warszawa<br/>NIP: 5252593479<br/>REGON: 147415997<br/>Wykorzystujemy pliki cookies w celu zapewnienia optymalnego działania strony internetowej oraz ułatwienia korzystania z naszego serwisu. Pozwala to m.in. dostosować wygląd strony internetowej do Waszych preferencji. Plikami cookies możesz zarządzać z poziomu wykorzystywanej przeglądarki internetowej.<br/>Szczegóły znajdziesz na podstronie:</p><p><a href="https://laboratorium.ee/polityka-prywatno%C5%9Bci/">Polityka prywatności</a></p>		<p>Jesteśmy <b>Prywatnym Centrum Badawczo-Rozwojowym</b>. Tworzymy usługi i produkty, które odpowiadają na ważne tematy, takie jak: <b>walka ze smogiem</b>, <b>wsparcie seniorów</b>, <b>rewolucja cyfrowa</b>. Podstawą w naszej pracy jest zaufanie i podejmowanie rozsądnego ryzyka. Celem wszystkich naszych działań jest wywołanie pozytywnego wpływu na społeczeństwo.</p>	<p>Jesteśmy <b>Prywatnym Centrum Badawczo-Rozwojowym</b>. Tworzymy usługi i produkty, które odpowiadają na ważne tematy, takie jak: <b>walka ze smogiem</b>, <b>wsparcie seniorów</b>, <b>rewolucja cyfrowa</b>. Podstawą w naszej pracy jest zaufanie i podejmowanie rozsądnego ryzyka. Celem wszystkich naszych działań jest wywołanie pozytywnego wpływu na społeczeństwo.</p>		<p><a href="http://thisisthe.studio">thisisthe.studio</a><br/><a href="https://centrumcyfrowe.pl/">www.centrumcyfrowe.pl</a><br/><a href="https://www.adminotaur.pl/">www.adminotaur.pl</a></p>		<p><a href="http://thisisthe.studio">thisisthe.studio</a><br/><a href="https://centrumcyfrowe.pl/">www.centrumcyfrowe.pl</a><br/><a href="https://www.adminotaur.pl/">www.adminotaur.pl</a></p>	1
\.


--
-- Data for Name: main_homepage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_homepage (page_ptr_id, content, content_pl, content_en) FROM stdin;
40	[{"type": "triptych", "value": {"headline": "Specjalizujemy w", "tiles": [{"background_image": 134, "content": "<p><b>Jeste\\u015bmy zwolennikami data driven everything. W naszych rozwi\\u0105zaniach wykorzystujemy data science i machine learning.</b></p>", "page": 6, "external_url": ""}, {"background_image": 135, "content": "<p><b>Projektujemy produkty cyfrowe i us\\u0142ugi cyfrowe. Zestawiamy potrzeby biznesowe z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 anga\\u017cuj\\u0105ce do\\u015bwiadczenia. Prototypujemy, aby tanio i szybko uczy\\u0107 si\\u0119 na b\\u0142\\u0119dach.</b></p>", "page": 19, "external_url": ""}, {"background_image": 61, "content": "<p><b>Jeste\\u015bmy ekspertami w Scrumie. Wdra\\u017camy podej\\u015bcie projektowe i zwinne metodyki zarz\\u0105dzania procesami. Takie podej\\u015bcie pozwala na szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia \\u015brodk\\u00f3w.</b></p>", "page": 27, "external_url": ""}]}, "id": "a6d2c01f-57b3-427c-93a6-d255cb6aa265"}, {"type": "hero_carousel", "value": {"headline": "Poznaj nas przez nasze historie", "tiles": [{"background_image": 55, "headline": "<p>Sprawd\\u017a jak <b>Data Science</b> mo\\u017ce rozwin\\u0105\\u0107 Tw\\u00f3j biznes.</p>", "page": 14, "secondary_page": null}, {"background_image": 133, "headline": "<p>Zoptymalizuj procesy dzi\\u0119ki<b> Lego Scrum Game</b></p>", "page": 31, "secondary_page": null}]}, "id": "9490147f-464a-46a2-9998-8e6aae5841dc"}, {"type": "hero_switch", "value": {"headline": "Dzia\\u0142amy w obszarach", "tiles": [{"background_image": 136, "title": "Ochrona klimatu", "page": 39, "side_image": 115}, {"background_image": 138, "title": "Seniorzy", "page": 32, "side_image": 118}, {"background_image": 139, "title": "Media", "page": 33, "side_image": 120}, {"background_image": 140, "title": "Prawo", "page": 34, "side_image": 122}]}, "id": "57fca60f-e6de-4927-95bb-7fa27d732285"}, {"type": "rnd", "value": {"headline": "Twoje prywatne centrum badawczo rozwojowe", "body": "Rozwi\\u0105zujemy problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom.  Tw\\u00f3rz z nami rozwi\\u0105zania, kt\\u00f3re b\\u0119d\\u0105 mia\\u0142y znacznie."}, "id": "3795628d-4141-4594-a674-4e31724457b7"}, {"type": "hero_join_us", "value": {"background_image": 132, "headline": "Do\\u0142\\u0105cz do nas", "body": "Nauczymy Ci\\u0119 my\\u015ble\\u0107 kodem i tworzy\\u0107 sercem podczas projektowania i rozwoju rozwi\\u0105za\\u0144 zmieniaj\\u0105cych \\u015bwiat.", "page": 8}, "id": "3a631dd9-c510-44c0-9361-79d4f6932a35"}]	[{"type": "triptych", "value": {"headline": "Specjalizujemy w", "tiles": [{"background_image": 134, "content": "<p><b>Jeste\\u015bmy zwolennikami data driven everything. W naszych rozwi\\u0105zaniach wykorzystujemy data science i machine learning.</b></p>", "page": 6, "external_url": ""}, {"background_image": 135, "content": "<p><b>Projektujemy produkty cyfrowe i us\\u0142ugi cyfrowe. Zestawiamy potrzeby biznesowe z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 anga\\u017cuj\\u0105ce do\\u015bwiadczenia. Prototypujemy, aby tanio i szybko uczy\\u0107 si\\u0119 na b\\u0142\\u0119dach.</b></p>", "page": 19, "external_url": ""}, {"background_image": 61, "content": "<p><b>Jeste\\u015bmy ekspertami w Scrumie. Wdra\\u017camy podej\\u015bcie projektowe i zwinne metodyki zarz\\u0105dzania procesami. Takie podej\\u015bcie pozwala na szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia \\u015brodk\\u00f3w.</b></p>", "page": 27, "external_url": ""}]}, "id": "a6d2c01f-57b3-427c-93a6-d255cb6aa265"}, {"type": "hero_carousel", "value": {"headline": "Poznaj nas przez nasze historie", "tiles": [{"background_image": 55, "headline": "<p>Sprawd\\u017a jak <b>Data Science</b> mo\\u017ce rozwin\\u0105\\u0107 Tw\\u00f3j biznes.</p>", "page": 14, "secondary_page": null}, {"background_image": 133, "headline": "<p>Zoptymalizuj procesy dzi\\u0119ki<b> Lego Scrum Game</b></p>", "page": 31, "secondary_page": null}]}, "id": "9490147f-464a-46a2-9998-8e6aae5841dc"}, {"type": "hero_switch", "value": {"headline": "Dzia\\u0142amy w obszarach", "tiles": [{"background_image": 136, "title": "Ochrona klimatu", "page": 39, "side_image": 115}, {"background_image": 138, "title": "Seniorzy", "page": 32, "side_image": 118}, {"background_image": 139, "title": "Media", "page": 33, "side_image": 120}, {"background_image": 140, "title": "Prawo", "page": 34, "side_image": 122}]}, "id": "57fca60f-e6de-4927-95bb-7fa27d732285"}, {"type": "rnd", "value": {"headline": "Twoje prywatne centrum badawczo rozwojowe", "body": "Rozwi\\u0105zujemy problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom.  Tw\\u00f3rz z nami rozwi\\u0105zania, kt\\u00f3re b\\u0119d\\u0105 mia\\u0142y znacznie."}, "id": "3795628d-4141-4594-a674-4e31724457b7"}, {"type": "hero_join_us", "value": {"background_image": 132, "headline": "Do\\u0142\\u0105cz do nas", "body": "Nauczymy Ci\\u0119 my\\u015ble\\u0107 kodem i tworzy\\u0107 sercem podczas projektowania i rozwoju rozwi\\u0105za\\u0144 zmieniaj\\u0105cych \\u015bwiat.", "page": 8}, "id": "3a631dd9-c510-44c0-9361-79d4f6932a35"}]	[]
\.


--
-- Data for Name: main_infopage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_infopage (page_ptr_id, content, content_pl, content_en, consent_required) FROM stdin;
28	<h2>Polityka prywatności strony internetowej</h2><h2><a href="https://laboratorium.ee/">https://laboratorium.ee/</a></h2><p>Obowiązuje od 17 czerwca 2019</p><h3>I POSTANOWIENIA OGÓLNE</h3><ul><li>Administratorem danych osobowych zbieranych za pośrednictwem strony internetowej https://laboratorium.ee/ jest Laboratorium EE Sp. z o.o., Sp. k., adres siedziby: Al. 3 maja 2/49, 00-391 Warszawa, wpisaną do rejestru przedsiębiorców pod numerem KRS: 0000523161, NIP: 5252593479, REGON: 147415997, posiadającą kapitał zakładowy w kwocie: 5000,00zł, adres poczty elektronicznej: kontakt@laboratorium.ee dalej „Administrator”, będąca jednocześnie Usługodawcą. , miejsce wykonywania działalności: Al. 3 maja 2/49, 00-391 Warszawa, adres do doręczeń: Al. 3 maja 2/49, 00-391 Warszawa, NIP: 5252593479, REGON: 147415997, adres poczty elektronicznej (e-mail): kontakt@laboratorium.ee, zwany dalej &quot;Administratorem&quot;.</li><li>Dane osobowe zbierane przez Administratora za pośrednictwem strony internetowej są przetwarzane zgodnie z Rozporządzeniem Parlamentu Europejskiego i Rady (UE) 2016/679 z dnia 27 kwietnia 2016 r. w sprawie ochrony osób fizycznych w związku z przetwarzaniem danych osobowych i w sprawie swobodnego przepływu takich danych oraz uchylenia dyrektywy 95/46/WE (ogólne rozporządzenie o ochronie danych), zwane dalej RODO oraz ustawą o ochronie danych osobowych z dnia 10 maja 2018 r.</li></ul><h3>II RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH, CEL I ZAKRES ZBIERANIA DANYCH</h3><p>CEL PRZETWARZANIA I PODSTAWA PRAWNA. Administrator przetwarza dane osobowe za pośrednictwem strony https://laboratorium.ee/ w przypadku:</p><ul><li>skorzystania przez użytkownika z formularza kontaktowego. Dane osobowe są przetwarzane na podstawie art. 6 ust. 1 lit. f) RODO jako prawnie usprawiedliwiony interes Administratora.<br/>RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH. Administrator przetwarza następujące kategorie danych osobowych użytkownika:</li><li>adres e-mail,</li></ul><p>OKRES ARCHIWIZACJI DANYCH OSOBOWYCH. Dane osobowe użytkowników przechowywane są przez Administratora:</p><ul><li>w przypadku, gdy podstawą przetwarzania danych jest wykonanie umowy, tak długo, jak jest to niezbędne do wykonania umowy, a po tym czasie przez okres odpowiadający okresowi przedawnienia roszczeń. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a dla roszczeń o świadczenia okresowe oraz roszczeń związanych z prowadzeniem działalności gospodarczej - trzy lata.</li><li>w przypadku, gdy podstawą przetwarzania danych jest zgoda, tak długo, aż zgoda nie zostanie odwołana, a po odwołaniu zgody przez okres czasu odpowiadający okresowi przedawnienia roszczeń jakie może podnosić Administrator i jakie mogą być podnoszone wobec niego. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a dla roszczeń o świadczenia okresowe oraz roszczeń związanych z prowadzeniem działalności gospodarczej - trzy lata.<ol><li>Podczas korzystania ze strony internetowej mogą być pobierane dodatkowe informacje, w szczególności: adres IP przypisany do komputera użytkownika lub zewnętrzny adres IP dostawcy Internetu, nazwa domeny, rodzaj przeglądarki, czas dostępu, typ systemu operacyjnego.</li><li>Od użytkowników mogą być także gromadzone dane nawigacyjne, w tym informacje o linkach i odnośnikach, w które zdecydują się kliknąć lub innych czynnościach, podejmowanych na stronie internetowej. Podstawą prawną tego rodzaju czynności jest prawnie uzasadniony interes Administratora (art. 6 ust. 1 lit. f RODO), polegający na ułatwieniu korzystania z usług świadczonych drogą elektroniczną oraz na poprawie funkcjonalności tych usług.</li><li>Podanie danych osobowych przez użytkownika jest dobrowolne.</li><li>Dane osobowe będą przetwarzane także w sposób zautomatyzowany w formie profilowania, o ile użytkownik wyrazi na to zgodę na podstawie art. 6 ust. 1 lit. a) RODO. Konsekwencją profilowania będzie przypisanie danej osobie profilu w celu podejmowania dotyczących jej decyzji bądź analizy lub przewidywania jej preferencji, zachowań i postaw.</li><li>Administrator dokłada szczególnej staranności w celu ochrony interesów osób, których dane dotyczą, a w szczególności zapewnia, że zbierane przez niego dane są:</li></ol></li></ul><ul><li>przetwarzane zgodnie z prawem,</li><li>zbierane dla oznaczonych, zgodnych z prawem celów i niepoddawane dalszemu przetwarzaniu niezgodnemu z tymi celami,</li><li>merytorycznie poprawne i adekwatne w stosunku do celów, w jakich są przetwarzane oraz przechowywane w postaci umożliwiającej identyfikację osób, których dotyczą, nie dłużej niż jest to niezbędne do osiągnięcia celu przetwarzania.</li></ul><h3>III UDOSTĘPNIENIE DANYCH OSOBOWYCH</h3><ul><li>Dane osobowe użytkowników przekazywane są dostawcom usług, z których korzysta Administrator przy prowadzeniu strony internetowej. Dostawcy usług, którym przekazywane są dane osobowe, w zależności od uzgodnień umownych i okoliczności, albo podlegają poleceniom Administratora co do celów i sposobów przetwarzania tych danych (podmioty przetwarzające) albo samodzielnie określają cele i sposoby ich przetwarzania (administratorzy).</li><li>Dane osobowe użytkowników są przechowywane wyłącznie na terenie Europejskiego Obszaru Gospodarczego (EOG).</li></ul><h3>IV PRAWO KONTROLI, DOSTĘPU DO TREŚCI WŁASNYCH DANYCH ORAZ ICH POPRAWIANIA</h3><p>Osoba, której dane dotyczą, ma prawo dostępu do treści swoich danych osobowych oraz prawo ich sprostowania, usunięcia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo wniesienia sprzeciwu, prawo do cofnięcia zgody w dowolnym momencie bez wpływu na zgodność z prawem przetwarzania, którego dokonano na podstawie zgody przed jej cofnięciem.</p><p>Podstawy prawne żądania użytkownika:</p><p>W celu realizacji uprawnień, o których mowa w pkt 2 można wysłać stosowną wiadomość e-mail na adres: kontakt@laboratorium.ee.</p><p>W sytuacji wystąpienia przez użytkownika z uprawnieniem wynikającym z powyższych praw, Administrator spełnia żądanie albo odmawia jego spełnienia niezwłocznie, nie później jednak niż w ciągu miesiąca po jego otrzymaniu. Jeżeli jednak - z uwagi na skomplikowany charakter żądania lub liczbę żądań – Administrator nie będzie mógł spełnić żądania w ciągu miesiąca, spełni je w ciągu kolejnych dwóch miesięcy informując użytkownika uprzednio w terminie miesiąca od otrzymania żądania - o zamierzonym przedłużeniu terminu oraz jego przyczynach.</p><p>W przypadku stwierdzenia, że przetwarzanie danych osobowych narusza przepisy RODO, osoba, której dane dotyczą, ma prawo wnieść skargę do Prezesa Urzędu Ochrony Danych Osobowych.</p><h3>V PLIKI &quot;COOKIES&quot;</h3><p>Strona Administratora używa plików „cookies”.</p><p>Instalacja plików „cookies” jest konieczna do prawidłowego świadczenia usług na stronie internetowej. W plikach „cookies&quot; znajdują się informacje niezbędne do prawidłowego funkcjonowania strony, a także dają one także możliwość opracowywania ogólnych statystyk odwiedzin strony internetowej.</p><p>W ramach strony stosowane są rodzaje plików &quot;cookies&quot;: sesyjne i stałe</p><p>Administrator wykorzystuje własne pliki cookies w celu lepszego poznania sposobu interakcji użytkownika w zakresie zawartości strony. Pliki gromadzą informacje o sposobie korzystania ze strony internetowej przez użytkownika, typie strony, z jakiej użytkownik został przekierowany oraz liczbie odwiedzin i czasie wizyty użytkownika na stronie internetowej. Informacje te nie rejestrują konkretnych danych osobowych użytkownika, lecz służą do opracowania statystyk korzystania ze strony.</p><p>Użytkownik ma prawo zadecydowania w zakresie dostępu plików „cookies” do swojego komputera poprzez ich uprzedni wybór w oknie swojej przeglądarki. Szczegółowe informacje o możliwości i sposobach obsługi plików „cookies” dostępne są w ustawieniach oprogramowania (przeglądarki internetowej).</p><h3>VI REMARKETING</h3><p>Serwisy internetowe korzystają z remarketingu i trackingu Google AdWords, Google Analytics, HotJar. Facebook Conversion Tracking oraz Facebook Custom Audiences do reklamowania swoich produktów online. Laboratorium EE zastrzega sobie prawo do wykorzystania wszystkich sposobów docierania do odbiorców dostępnych w Google AdWords, w tym: odbiorcy o podobnych zainteresowaniach, niestandardowi odbiorcy o podobnych zainteresowaniach, odbiorcy na rynku, podobni odbiorcy, cechy demograficzne, lokalizacja, remarketing (dowiedz się więcej o plikach cookie używanych przez Google).</p><p>Laboratorium EE i inni dostawcy, w tym Google, korzystają zarówno z własnych plików cookie, jak i plików cookie firm zewnętrznych do informowania, optymalizacji oraz wyświetlania reklam na podstawie historii odwiedzin użytkowników w witrynie. Google i inni dostawcy wyświetlają nasze reklamy w Internecie. Możesz zrezygnować z usługi Google Analytics dla reklam displayowych i dostosować reklamy w sieci reklamowej Google za pomocą Ustawień reklam. Możesz też całkowicie zablokować Google Analytics poprzez zainstalowanie dodatku do swojej przeglądarki. W przypadku Facebooka, jeżeli nie chcesz aby gromadzone były informacje o Twojej aktywności w witrynach lub aplikacjach poza Facebookiem i wykorzystywane do wyświetlania Ci reklam, możesz wyrazić sprzeciw w Ustawieniach reklam. Laboratorium EE nie zbiera żadnych poufnych informacji o swoich gościach.</p><h3>VII ZMIANY POLITYKI PRYWATNOŚCI</h3><p>Laboratorium EE zastrzega sobie prawo do wprowadzania zmian w niniejszej Polityce Prywatności. Wraz z każdą zmianą nowa wersja Polityki Prywatności będzie się pojawiać z nową datą.</p><h3>VIII POSTANOWIENIA KOŃCOWE</h3><p>Administrator stosuje środki techniczne i organizacyjne zapewniające ochronę przetwarzanych danych osobowych odpowiednią do zagrożeń oraz kategorii danych objętych ochroną, a w szczególności zabezpiecza dane przed ich udostępnieniem osobom nieupoważnionym, zabraniem przez osobę nieuprawnioną, przetwarzaniem z naruszeniem obowiązujących przepisów oraz zmianą, utratą, uszkodzeniem lub zniszczeniem.</p><p>Administrator udostępnia odpowiednie środki techniczne zapobiegające pozyskiwaniu i modyfikowaniu przez osoby nieuprawnione, danych osobowych przesyłanych drogą elektroniczną.</p><p>W sprawach nieuregulowanych niniejszą Polityką prywatności stosuje się odpowiednio przepisy RODO oraz inne właściwe przepisy prawa polskiego.</p>	<h2>Polityka prywatności strony internetowej</h2><h2><a href="https://laboratorium.ee/">https://laboratorium.ee/</a></h2><p>Obowiązuje od 17 czerwca 2019</p><h3>I POSTANOWIENIA OGÓLNE</h3><ul><li>Administratorem danych osobowych zbieranych za pośrednictwem strony internetowej https://laboratorium.ee/ jest Laboratorium EE Sp. z o.o., Sp. k., adres siedziby: Al. 3 maja 2/49, 00-391 Warszawa, wpisaną do rejestru przedsiębiorców pod numerem KRS: 0000523161, NIP: 5252593479, REGON: 147415997, posiadającą kapitał zakładowy w kwocie: 5000,00zł, adres poczty elektronicznej: kontakt@laboratorium.ee dalej „Administrator”, będąca jednocześnie Usługodawcą. , miejsce wykonywania działalności: Al. 3 maja 2/49, 00-391 Warszawa, adres do doręczeń: Al. 3 maja 2/49, 00-391 Warszawa, NIP: 5252593479, REGON: 147415997, adres poczty elektronicznej (e-mail): kontakt@laboratorium.ee, zwany dalej &quot;Administratorem&quot;.</li><li>Dane osobowe zbierane przez Administratora za pośrednictwem strony internetowej są przetwarzane zgodnie z Rozporządzeniem Parlamentu Europejskiego i Rady (UE) 2016/679 z dnia 27 kwietnia 2016 r. w sprawie ochrony osób fizycznych w związku z przetwarzaniem danych osobowych i w sprawie swobodnego przepływu takich danych oraz uchylenia dyrektywy 95/46/WE (ogólne rozporządzenie o ochronie danych), zwane dalej RODO oraz ustawą o ochronie danych osobowych z dnia 10 maja 2018 r.</li></ul><h3>II RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH, CEL I ZAKRES ZBIERANIA DANYCH</h3><p>CEL PRZETWARZANIA I PODSTAWA PRAWNA. Administrator przetwarza dane osobowe za pośrednictwem strony https://laboratorium.ee/ w przypadku:</p><ul><li>skorzystania przez użytkownika z formularza kontaktowego. Dane osobowe są przetwarzane na podstawie art. 6 ust. 1 lit. f) RODO jako prawnie usprawiedliwiony interes Administratora.<br/>RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH. Administrator przetwarza następujące kategorie danych osobowych użytkownika:</li><li>adres e-mail,</li></ul><p>OKRES ARCHIWIZACJI DANYCH OSOBOWYCH. Dane osobowe użytkowników przechowywane są przez Administratora:</p><ul><li>w przypadku, gdy podstawą przetwarzania danych jest wykonanie umowy, tak długo, jak jest to niezbędne do wykonania umowy, a po tym czasie przez okres odpowiadający okresowi przedawnienia roszczeń. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a dla roszczeń o świadczenia okresowe oraz roszczeń związanych z prowadzeniem działalności gospodarczej - trzy lata.</li><li>w przypadku, gdy podstawą przetwarzania danych jest zgoda, tak długo, aż zgoda nie zostanie odwołana, a po odwołaniu zgody przez okres czasu odpowiadający okresowi przedawnienia roszczeń jakie może podnosić Administrator i jakie mogą być podnoszone wobec niego. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a dla roszczeń o świadczenia okresowe oraz roszczeń związanych z prowadzeniem działalności gospodarczej - trzy lata.<ol><li>Podczas korzystania ze strony internetowej mogą być pobierane dodatkowe informacje, w szczególności: adres IP przypisany do komputera użytkownika lub zewnętrzny adres IP dostawcy Internetu, nazwa domeny, rodzaj przeglądarki, czas dostępu, typ systemu operacyjnego.</li><li>Od użytkowników mogą być także gromadzone dane nawigacyjne, w tym informacje o linkach i odnośnikach, w które zdecydują się kliknąć lub innych czynnościach, podejmowanych na stronie internetowej. Podstawą prawną tego rodzaju czynności jest prawnie uzasadniony interes Administratora (art. 6 ust. 1 lit. f RODO), polegający na ułatwieniu korzystania z usług świadczonych drogą elektroniczną oraz na poprawie funkcjonalności tych usług.</li><li>Podanie danych osobowych przez użytkownika jest dobrowolne.</li><li>Dane osobowe będą przetwarzane także w sposób zautomatyzowany w formie profilowania, o ile użytkownik wyrazi na to zgodę na podstawie art. 6 ust. 1 lit. a) RODO. Konsekwencją profilowania będzie przypisanie danej osobie profilu w celu podejmowania dotyczących jej decyzji bądź analizy lub przewidywania jej preferencji, zachowań i postaw.</li><li>Administrator dokłada szczególnej staranności w celu ochrony interesów osób, których dane dotyczą, a w szczególności zapewnia, że zbierane przez niego dane są:</li></ol></li></ul><ul><li>przetwarzane zgodnie z prawem,</li><li>zbierane dla oznaczonych, zgodnych z prawem celów i niepoddawane dalszemu przetwarzaniu niezgodnemu z tymi celami,</li><li>merytorycznie poprawne i adekwatne w stosunku do celów, w jakich są przetwarzane oraz przechowywane w postaci umożliwiającej identyfikację osób, których dotyczą, nie dłużej niż jest to niezbędne do osiągnięcia celu przetwarzania.</li></ul><h3>III UDOSTĘPNIENIE DANYCH OSOBOWYCH</h3><ul><li>Dane osobowe użytkowników przekazywane są dostawcom usług, z których korzysta Administrator przy prowadzeniu strony internetowej. Dostawcy usług, którym przekazywane są dane osobowe, w zależności od uzgodnień umownych i okoliczności, albo podlegają poleceniom Administratora co do celów i sposobów przetwarzania tych danych (podmioty przetwarzające) albo samodzielnie określają cele i sposoby ich przetwarzania (administratorzy).</li><li>Dane osobowe użytkowników są przechowywane wyłącznie na terenie Europejskiego Obszaru Gospodarczego (EOG).</li></ul><h3>IV PRAWO KONTROLI, DOSTĘPU DO TREŚCI WŁASNYCH DANYCH ORAZ ICH POPRAWIANIA</h3><p>Osoba, której dane dotyczą, ma prawo dostępu do treści swoich danych osobowych oraz prawo ich sprostowania, usunięcia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo wniesienia sprzeciwu, prawo do cofnięcia zgody w dowolnym momencie bez wpływu na zgodność z prawem przetwarzania, którego dokonano na podstawie zgody przed jej cofnięciem.</p><p>Podstawy prawne żądania użytkownika:</p><p>W celu realizacji uprawnień, o których mowa w pkt 2 można wysłać stosowną wiadomość e-mail na adres: kontakt@laboratorium.ee.</p><p>W sytuacji wystąpienia przez użytkownika z uprawnieniem wynikającym z powyższych praw, Administrator spełnia żądanie albo odmawia jego spełnienia niezwłocznie, nie później jednak niż w ciągu miesiąca po jego otrzymaniu. Jeżeli jednak - z uwagi na skomplikowany charakter żądania lub liczbę żądań – Administrator nie będzie mógł spełnić żądania w ciągu miesiąca, spełni je w ciągu kolejnych dwóch miesięcy informując użytkownika uprzednio w terminie miesiąca od otrzymania żądania - o zamierzonym przedłużeniu terminu oraz jego przyczynach.</p><p>W przypadku stwierdzenia, że przetwarzanie danych osobowych narusza przepisy RODO, osoba, której dane dotyczą, ma prawo wnieść skargę do Prezesa Urzędu Ochrony Danych Osobowych.</p><h3>V PLIKI &quot;COOKIES&quot;</h3><p>Strona Administratora używa plików „cookies”.</p><p>Instalacja plików „cookies” jest konieczna do prawidłowego świadczenia usług na stronie internetowej. W plikach „cookies&quot; znajdują się informacje niezbędne do prawidłowego funkcjonowania strony, a także dają one także możliwość opracowywania ogólnych statystyk odwiedzin strony internetowej.</p><p>W ramach strony stosowane są rodzaje plików &quot;cookies&quot;: sesyjne i stałe</p><p>Administrator wykorzystuje własne pliki cookies w celu lepszego poznania sposobu interakcji użytkownika w zakresie zawartości strony. Pliki gromadzą informacje o sposobie korzystania ze strony internetowej przez użytkownika, typie strony, z jakiej użytkownik został przekierowany oraz liczbie odwiedzin i czasie wizyty użytkownika na stronie internetowej. Informacje te nie rejestrują konkretnych danych osobowych użytkownika, lecz służą do opracowania statystyk korzystania ze strony.</p><p>Użytkownik ma prawo zadecydowania w zakresie dostępu plików „cookies” do swojego komputera poprzez ich uprzedni wybór w oknie swojej przeglądarki. Szczegółowe informacje o możliwości i sposobach obsługi plików „cookies” dostępne są w ustawieniach oprogramowania (przeglądarki internetowej).</p><h3>VI REMARKETING</h3><p>Serwisy internetowe korzystają z remarketingu i trackingu Google AdWords, Google Analytics, HotJar. Facebook Conversion Tracking oraz Facebook Custom Audiences do reklamowania swoich produktów online. Laboratorium EE zastrzega sobie prawo do wykorzystania wszystkich sposobów docierania do odbiorców dostępnych w Google AdWords, w tym: odbiorcy o podobnych zainteresowaniach, niestandardowi odbiorcy o podobnych zainteresowaniach, odbiorcy na rynku, podobni odbiorcy, cechy demograficzne, lokalizacja, remarketing (dowiedz się więcej o plikach cookie używanych przez Google).</p><p>Laboratorium EE i inni dostawcy, w tym Google, korzystają zarówno z własnych plików cookie, jak i plików cookie firm zewnętrznych do informowania, optymalizacji oraz wyświetlania reklam na podstawie historii odwiedzin użytkowników w witrynie. Google i inni dostawcy wyświetlają nasze reklamy w Internecie. Możesz zrezygnować z usługi Google Analytics dla reklam displayowych i dostosować reklamy w sieci reklamowej Google za pomocą Ustawień reklam. Możesz też całkowicie zablokować Google Analytics poprzez zainstalowanie dodatku do swojej przeglądarki. W przypadku Facebooka, jeżeli nie chcesz aby gromadzone były informacje o Twojej aktywności w witrynach lub aplikacjach poza Facebookiem i wykorzystywane do wyświetlania Ci reklam, możesz wyrazić sprzeciw w Ustawieniach reklam. Laboratorium EE nie zbiera żadnych poufnych informacji o swoich gościach.</p><h3>VII ZMIANY POLITYKI PRYWATNOŚCI</h3><p>Laboratorium EE zastrzega sobie prawo do wprowadzania zmian w niniejszej Polityce Prywatności. Wraz z każdą zmianą nowa wersja Polityki Prywatności będzie się pojawiać z nową datą.</p><h3>VIII POSTANOWIENIA KOŃCOWE</h3><p>Administrator stosuje środki techniczne i organizacyjne zapewniające ochronę przetwarzanych danych osobowych odpowiednią do zagrożeń oraz kategorii danych objętych ochroną, a w szczególności zabezpiecza dane przed ich udostępnieniem osobom nieupoważnionym, zabraniem przez osobę nieuprawnioną, przetwarzaniem z naruszeniem obowiązujących przepisów oraz zmianą, utratą, uszkodzeniem lub zniszczeniem.</p><p>Administrator udostępnia odpowiednie środki techniczne zapobiegające pozyskiwaniu i modyfikowaniu przez osoby nieuprawnione, danych osobowych przesyłanych drogą elektroniczną.</p><p>W sprawach nieuregulowanych niniejszą Polityką prywatności stosuje się odpowiednio przepisy RODO oraz inne właściwe przepisy prawa polskiego.</p>		t
29	<ol><li>Postanowienia ogólne</li><li>Definicje</li><li>Rodzaj i zakres usług elektronicznych</li><li>Warunki świadczenia i zawierania umów o świadczenie usług elektronicznych</li><li>Tryb postępowania reklamacyjnego</li><li>Własność intelektualna</li><li>Postanowienia końcowe</li></ol><h3>I POSTANOWIENIA OGÓLNE</h3><p>Strona https://laboratorium.ee/ działa na zasadach określonych w niniejszym Regulaminie.</p><p>Regulamin określa rodzaje i zakres usług świadczonych drogą elektroniczną przez Stronę https://laboratorium.ee/, zasady świadczenia tych usług, warunki zawierania i rozwiązywania umów o świadczenie usług drogą elektroniczną, a także tryb postępowania reklamacyjnego.</p><p>Regulamin określa rodzaje i zakres usług świadczonych drogą elektroniczną przez Stronę https://laboratorium.ee/, zasady świadczenia tych usług, warunki zawierania i rozwiązywania umów o świadczenie usług drogą elektroniczną, a także tryb postępowania reklamacyjnego.</p><p>Każdy Usługobiorca z chwilą podjęcia czynności zmierzających do korzystania z Usług Elektronicznych Strony https://laboratorium.ee/, zobowiązany jest do przestrzegania postanowień niniejszego Regulaminu.</p><p>W sprawach nieuregulowanych w niniejszym Regulaminie mają zastosowanie przepisy</p><h3>II DEFINICJE</h3><p>FORMULARZ KONTAKTOWY – formularz dostępny na Stronie https://laboratorium.ee/ umożliwiający Usługobiorcy bezpośredni kontakt z Usługodawcą.</p><p>REGULAMIN - niniejszy regulamin Strony.</p><p>USŁUGODAWCA – Laboratorium EE Sp. z o.o., Sp. k., adres siedziby: Al. 3 maja 2/49, 00-391 Warszawa, adres do doręczeń: Al. 3 maja 2/49, 00-391 Warszawa wpisaną do rejestru przedsiębiorców pod numerem KRS: 0000523161, NIP: 5252593479, REGON: 147415997, posiadającą kapitał zakładowy w kwocie: 5000,00zł, adres poczty elektronicznej: kontakt@laboratorium.ee, tel.: +48 734 482 835.</p><p>USŁUGOBIORCA – osoba fizyczna, osoba prawna albo jednostka organizacyjna nieposiadająca osobowości prawnej, której ustawa przyznaje zdolność prawną korzystająca z Usługi Elektronicznej.</p><p>USŁUGA ELEKTRONICZNA – usługa świadczona drogą elektroniczną przez Usługodawcę na rzecz Usługobiorcy za pośrednictwem Strony.</p><h3>III RODZAJ I ZAKRES USŁUG ELEKTRONICZNYCH</h3><p>Usługodawca umożliwia za pośrednictwem Strony korzystanie z Usług Elektronicznych takich jak:</p><ul><li>korzystanie z Formularza Kontaktowego,</li><li>świadczenie Usług Elektronicznych na rzecz Usługobiorców odbywa się na warunkach określonych w Regulaminie.</li></ul><h3>IV WARUNKI ŚWIADCZENIA I ZAWIERANIA UMÓW O ŚWIADCZENIE USŁUG ELEKTRONICZNYCH</h3><p>Świadczenie Usług Elektronicznych określonych w rozdziale III pkt. 1 Regulaminu przez Usługodawcę jest nieodpłatne.</p><p>Okres na jaki umowa zostaje zawarta:</p><ul><li>umowa o świadczenie Usługi Elektronicznej polegającej na umożliwieniu wysłania wiadomości za pośrednictwem Formularza Kontaktowego zawierana jest na czas oznaczony i ulega rozwiązaniu z chwilą wysłania wiadomości albo zaprzestania jej wysyłania przez Usługobiorcę.</li></ul><p>Wymagania techniczne niezbędne do współpracy z systemem teleinformatycznym, którym posługuje się Usługodawca:</p><ul><li>komputer z dostępem do Internetu,</li><li>dostęp do poczty elektronicznej,</li><li>przeglądarka internetowa,</li><li>włączenie w przeglądarce internetowej Cookies oraz Javascript.</li></ul><p>Usługobiorca zobowiązany jest do korzystania ze Strony w sposób zgodny z prawem i dobrymi obyczajami mając na uwadze poszanowanie dóbr osobistych i praw własności intelektualnej osób trzecich.</p><p>Usługobiorca zobowiązany jest do wprowadzania danych zgodnych ze stanem faktycznym.</p><p>Usługobiorcę obowiązuje zakaz dostarczania treści o charakterze bezprawnym.</p><h3>V TRYB POSTĘPOWANIA REKLAMACYJNEGO</h3><p>Reklamacje związane ze świadczeniem Usług Elektronicznych przez Usługodawcę:</p><ul><li>reklamacje związane ze świadczeniem Usług Elektronicznych za pośrednictwem Strony Usługobiorca może składać za pośrednictwem poczty elektronicznej na adres: kontakt@laboratorium.ee,</li><li>w powyższej wiadomości e-mail, należy podać jak najwięcej informacji i okoliczności dotyczących przedmiotu reklamacji, w szczególności rodzaj i datę wystąpienia nieprawidłowości oraz dane kontaktowe. Podane informacje znacznie ułatwią i przyspieszą rozpatrzenie reklamacji przez Usługodawcę,</li><li>rozpatrzenie reklamacji przez Usługodawcę następuje niezwłocznie, nie później niż w terminie 14 dni,</li><li>odpowiedź Usługodawcy w sprawie reklamacji jest wysyłana na adres e-mail Usługobiorcy podany w zgłoszeniu reklamacyjnym lub w inny podany przez Usługobiorcę sposób.</li></ul><h3>VI WŁASNOŚĆ INTELEKTUALNA</h3><p>Wszystkie treści zamieszczone na stronie internetowej pod adresem https://laboratorium.ee/ korzystają z ochrony prawno autorskiej i są własnością <a href="https://laboratorium.ee/">https://laboratorium.ee/</a> Usługobiorca ponosi pełną odpowiedzialność za szkodę wyrządzoną Usługodawcy, będącą następstwem użycia jakiejkolwiek zawartości strony <a href="https://laboratorium.ee/">https://laboratorium.ee/</a>, bez zgody Usługodawcy.</p><p>Jakiekolwiek wykorzystanie przez kogokolwiek, bez wyraźnej pisemnej zgody Usługodawcy, któregokolwiek z elementów składających się na treść oraz zawartość strony https://laboratorium.ee/ stanowi naruszenie prawa autorskiego przysługującego Usługodawcy i skutkuje odpowiedzialnością cywilnoprawną oraz karną.</p><h3>VII POSTANOWIENIA KOŃCOWE</h3><p>Umowy zawierane za pośrednictwem Strony zawierane są zgodnie z prawem polskim.</p><p>W przypadku niezgodności jakiejkolwiek części Regulaminu z obowiązującym prawem, w miejsce zakwestionowanego przepisu Regulaminu zastosowanie mają właściwe przepisy prawa polskiego.</p>	<ol><li>Postanowienia ogólne</li><li>Definicje</li><li>Rodzaj i zakres usług elektronicznych</li><li>Warunki świadczenia i zawierania umów o świadczenie usług elektronicznych</li><li>Tryb postępowania reklamacyjnego</li><li>Własność intelektualna</li><li>Postanowienia końcowe</li></ol><h3>I POSTANOWIENIA OGÓLNE</h3><p>Strona https://laboratorium.ee/ działa na zasadach określonych w niniejszym Regulaminie.</p><p>Regulamin określa rodzaje i zakres usług świadczonych drogą elektroniczną przez Stronę https://laboratorium.ee/, zasady świadczenia tych usług, warunki zawierania i rozwiązywania umów o świadczenie usług drogą elektroniczną, a także tryb postępowania reklamacyjnego.</p><p>Regulamin określa rodzaje i zakres usług świadczonych drogą elektroniczną przez Stronę https://laboratorium.ee/, zasady świadczenia tych usług, warunki zawierania i rozwiązywania umów o świadczenie usług drogą elektroniczną, a także tryb postępowania reklamacyjnego.</p><p>Każdy Usługobiorca z chwilą podjęcia czynności zmierzających do korzystania z Usług Elektronicznych Strony https://laboratorium.ee/, zobowiązany jest do przestrzegania postanowień niniejszego Regulaminu.</p><p>W sprawach nieuregulowanych w niniejszym Regulaminie mają zastosowanie przepisy</p><h3>II DEFINICJE</h3><p>FORMULARZ KONTAKTOWY – formularz dostępny na Stronie https://laboratorium.ee/ umożliwiający Usługobiorcy bezpośredni kontakt z Usługodawcą.</p><p>REGULAMIN - niniejszy regulamin Strony.</p><p>USŁUGODAWCA – Laboratorium EE Sp. z o.o., Sp. k., adres siedziby: Al. 3 maja 2/49, 00-391 Warszawa, adres do doręczeń: Al. 3 maja 2/49, 00-391 Warszawa wpisaną do rejestru przedsiębiorców pod numerem KRS: 0000523161, NIP: 5252593479, REGON: 147415997, posiadającą kapitał zakładowy w kwocie: 5000,00zł, adres poczty elektronicznej: kontakt@laboratorium.ee, tel.: +48 734 482 835.</p><p>USŁUGOBIORCA – osoba fizyczna, osoba prawna albo jednostka organizacyjna nieposiadająca osobowości prawnej, której ustawa przyznaje zdolność prawną korzystająca z Usługi Elektronicznej.</p><p>USŁUGA ELEKTRONICZNA – usługa świadczona drogą elektroniczną przez Usługodawcę na rzecz Usługobiorcy za pośrednictwem Strony.</p><h3>III RODZAJ I ZAKRES USŁUG ELEKTRONICZNYCH</h3><p>Usługodawca umożliwia za pośrednictwem Strony korzystanie z Usług Elektronicznych takich jak:</p><ul><li>korzystanie z Formularza Kontaktowego,</li><li>świadczenie Usług Elektronicznych na rzecz Usługobiorców odbywa się na warunkach określonych w Regulaminie.</li></ul><h3>IV WARUNKI ŚWIADCZENIA I ZAWIERANIA UMÓW O ŚWIADCZENIE USŁUG ELEKTRONICZNYCH</h3><p>Świadczenie Usług Elektronicznych określonych w rozdziale III pkt. 1 Regulaminu przez Usługodawcę jest nieodpłatne.</p><p>Okres na jaki umowa zostaje zawarta:</p><ul><li>umowa o świadczenie Usługi Elektronicznej polegającej na umożliwieniu wysłania wiadomości za pośrednictwem Formularza Kontaktowego zawierana jest na czas oznaczony i ulega rozwiązaniu z chwilą wysłania wiadomości albo zaprzestania jej wysyłania przez Usługobiorcę.</li></ul><p>Wymagania techniczne niezbędne do współpracy z systemem teleinformatycznym, którym posługuje się Usługodawca:</p><ul><li>komputer z dostępem do Internetu,</li><li>dostęp do poczty elektronicznej,</li><li>przeglądarka internetowa,</li><li>włączenie w przeglądarce internetowej Cookies oraz Javascript.</li></ul><p>Usługobiorca zobowiązany jest do korzystania ze Strony w sposób zgodny z prawem i dobrymi obyczajami mając na uwadze poszanowanie dóbr osobistych i praw własności intelektualnej osób trzecich.</p><p>Usługobiorca zobowiązany jest do wprowadzania danych zgodnych ze stanem faktycznym.</p><p>Usługobiorcę obowiązuje zakaz dostarczania treści o charakterze bezprawnym.</p><h3>V TRYB POSTĘPOWANIA REKLAMACYJNEGO</h3><p>Reklamacje związane ze świadczeniem Usług Elektronicznych przez Usługodawcę:</p><ul><li>reklamacje związane ze świadczeniem Usług Elektronicznych za pośrednictwem Strony Usługobiorca może składać za pośrednictwem poczty elektronicznej na adres: kontakt@laboratorium.ee,</li><li>w powyższej wiadomości e-mail, należy podać jak najwięcej informacji i okoliczności dotyczących przedmiotu reklamacji, w szczególności rodzaj i datę wystąpienia nieprawidłowości oraz dane kontaktowe. Podane informacje znacznie ułatwią i przyspieszą rozpatrzenie reklamacji przez Usługodawcę,</li><li>rozpatrzenie reklamacji przez Usługodawcę następuje niezwłocznie, nie później niż w terminie 14 dni,</li><li>odpowiedź Usługodawcy w sprawie reklamacji jest wysyłana na adres e-mail Usługobiorcy podany w zgłoszeniu reklamacyjnym lub w inny podany przez Usługobiorcę sposób.</li></ul><h3>VI WŁASNOŚĆ INTELEKTUALNA</h3><p>Wszystkie treści zamieszczone na stronie internetowej pod adresem https://laboratorium.ee/ korzystają z ochrony prawno autorskiej i są własnością <a href="https://laboratorium.ee/">https://laboratorium.ee/</a> Usługobiorca ponosi pełną odpowiedzialność za szkodę wyrządzoną Usługodawcy, będącą następstwem użycia jakiejkolwiek zawartości strony <a href="https://laboratorium.ee/">https://laboratorium.ee/</a>, bez zgody Usługodawcy.</p><p>Jakiekolwiek wykorzystanie przez kogokolwiek, bez wyraźnej pisemnej zgody Usługodawcy, któregokolwiek z elementów składających się na treść oraz zawartość strony https://laboratorium.ee/ stanowi naruszenie prawa autorskiego przysługującego Usługodawcy i skutkuje odpowiedzialnością cywilnoprawną oraz karną.</p><h3>VII POSTANOWIENIA KOŃCOWE</h3><p>Umowy zawierane za pośrednictwem Strony zawierane są zgodnie z prawem polskim.</p><p>W przypadku niezgodności jakiejkolwiek części Regulaminu z obowiązującym prawem, w miejsce zakwestionowanego przepisu Regulaminu zastosowanie mają właściwe przepisy prawa polskiego.</p>		t
\.


--
-- Data for Name: main_jobofferindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_jobofferindexpage (page_ptr_id, cooperation, cooperation_pl, cooperation_en, recruitment, recruitment_pl, recruitment_en) FROM stdin;
8	Jeśli jesteś osobą, która nie boi się wyzwań, wiesz co to Scrum i masz potrzebę tworzenia produktów IT mających wpływ na społeczeństwo, wyślij nam swoje CV niezależnie od prowadzonych rekrutacji. Chętnie Cię poznamy.	Jeśli jesteś osobą, która nie boi się wyzwań, wiesz co to Scrum i masz potrzebę tworzenia produktów IT mających wpływ na społeczeństwo, wyślij nam swoje CV niezależnie od prowadzonych rekrutacji. Chętnie Cię poznamy.	jeśli jesteś programistą Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.	[{"type": "text", "value": "Chcemy \\u017ceby proces rekrutacji by\\u0142 kr\\u00f3tki i przyjemny. Dok\\u0142adamy wszelkich stara\\u0144, aby dzia\\u0142a\\u0107 szybko i efektywnie. Mimo, \\u017ce zastrzegamy sobie prawo do kontaktu z wybranymi kandydatami, dochodz\\u0105c do ostatniego etapu rekrutacji, masz gwarancj\\u0119 informacji zwrotnej.", "id": "8652e896-14d2-44a7-8c25-3c3581d7927c"}, {"type": "tiles_list", "value": [{"heading": "W zale\\u017cno\\u015bci od stanowiska przeprowadzamy kr\\u00f3tk\\u0105 rozmow\\u0119 telefoniczn\\u0105, albo wysy\\u0142amy kilka pyta\\u0144 technicznych mailem.", "image": 98}, {"heading": "Na drugi etap zapraszamy do naszego biura, gdzie mo\\u017cemy usi\\u0105\\u015b\\u0107 i porozmawia\\u0107. W trakcie rozmowy mo\\u017cesz otrzyma\\u0107 zadanie, sprawdzaj\\u0105ce Twoje umiej\\u0119tno\\u015bci.", "image": 97}, {"heading": "Do 7 dni od zamkni\\u0119cia procesu rekrutacyjnego dostaniesz informacj\\u0119 o jego wynikach niezale\\u017cnie od jego powodzenia.", "image": 94}], "id": "e6ade72c-287a-4647-8cbb-6d134d322169"}]	[{"type": "text", "value": "Chcemy \\u017ceby proces rekrutacji by\\u0142 kr\\u00f3tki i przyjemny. Dok\\u0142adamy wszelkich stara\\u0144, aby dzia\\u0142a\\u0107 szybko i efektywnie. Mimo, \\u017ce zastrzegamy sobie prawo do kontaktu z wybranymi kandydatami, dochodz\\u0105c do ostatniego etapu rekrutacji, masz gwarancj\\u0119 informacji zwrotnej.", "id": "8652e896-14d2-44a7-8c25-3c3581d7927c"}, {"type": "tiles_list", "value": [{"heading": "W zale\\u017cno\\u015bci od stanowiska przeprowadzamy kr\\u00f3tk\\u0105 rozmow\\u0119 telefoniczn\\u0105, albo wysy\\u0142amy kilka pyta\\u0144 technicznych mailem.", "image": 98}, {"heading": "Na drugi etap zapraszamy do naszego biura, gdzie mo\\u017cemy usi\\u0105\\u015b\\u0107 i porozmawia\\u0107. W trakcie rozmowy mo\\u017cesz otrzyma\\u0107 zadanie, sprawdzaj\\u0105ce Twoje umiej\\u0119tno\\u015bci.", "image": 97}, {"heading": "Do 7 dni od zamkni\\u0119cia procesu rekrutacyjnego dostaniesz informacj\\u0119 o jego wynikach niezale\\u017cnie od jego powodzenia.", "image": 94}], "id": "e6ade72c-287a-4647-8cbb-6d134d322169"}]	[{"type": "text", "value": "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", "id": "fe7e845b-42d9-4377-97e2-461e592456f4"}, {"type": "tiles_list", "value": [{"heading": "asdf", "image": 99}, {"heading": "asdfdfs", "image": 97}], "id": "aedd0b07-c379-46aa-9303-1cfc6156d8a0"}]
\.


--
-- Data for Name: main_jobofferpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_jobofferpage (page_ptr_id, salary, employment_form, body, body_pl, body_en, icon_id) FROM stdin;
30	5000 - 10000 zł netto	B2B	<h2>UX Designer cechuje się:</h2><ul><li>odwagą do podejmowanie decyzji</li><li>nastawieniem na realizację celów, a nie zadań</li><li>umiejętnością definiowania celów, a nie czekaniem na ich wskazywanie</li><li>transparentną komunikacją, szczerością, chęcią dawania feedbacku i przyjmowania go</li><li>otwartością na ścisłą pracę z zespołem z zespołem IT, włączając ciągłą naukę technologii</li><li>serdecznym podejściem do pracy zespołowej i otwartością na pracę z Klientem</li><li>umiejętność szybkiej  pracy na 2-3 projektach równolegle</li><li>umiejętnością uczenia się nowych rzeczy również poprzez popełnianie błędów i ich ewaluację  </li></ul><h3>Nasze oczekiwania co do kompetencji:</h3><ul><li>przeprowadzonych co najmniej 20 wywiadów z użytkownikami i Klientami</li><li>przeprowadzenie co najmniej 5 warsztatów projektowych w konkretnej metodyce - np  Google Design Sprint</li><li>zaprojektowanych co najmniej 5 interfejsów mobilnych i 10 interfejsów webowych, które są wdrożone i mają co najmniej łącznie 100 000 aktywnych użytkowników</li><li>znajomość praktyczna narzędzi takich jak Axure, Google Analytics, Hot Jar</li><li>umiejętność argumentacji swoich decyzji projektowych w oparciu o dane</li><li>znajomości metodologii badań i projektowania i dostosowania jej do realizacji konkretnych celów</li><li>znajomość metodyki Scrum,</li><li>chęć rozwoju/szukanie nowych trendów w zakresie data science, machine learning i UX</li><li>mile widziane znajomość technologii takich jak HTML5, CSS3, JavaScript</li><li>mile widziana znajomość Material Design <a href="https://material.io/design/">https://material.io/design/</a></li></ul><h4>Co oferujemy?</h4><ul><li>samodzielność  i pracę w zwinnym i interdyscyplinarnym zespole (metodyka scrum)</li><li>wdrażanie własnych pomysłów</li><li>nastawienie na rozwój i na nowe doświadczenia</li><li>luźną atmosferę i uporządkowany system pracy</li><li>wynagrodzenie adekwatne do doświadczenia (przewidujemy widełki od 5 000 zł do 10 000 zł na rękę)</li><li>dobrze skomunikowaną lokalizację na Powiślu (okolice Mostu Poniatowskiego, w sąsiedztwie metro Centrum Nauki Kopernik)</li><li>współpracę B2B</li><li>prenumerata  MIT Technology Review, The Wired</li><li>dostęp do Audiobooków w pracy</li><li>możliwość - po uzgodnieniu - do wykorzystania biura do własnych celów</li><li>2 monitory do dyspozycji</li><li>komputer do uzgodnienia</li></ul><blockquote>UX Designer</blockquote>	<h2>UX Designer cechuje się:</h2><ul><li>odwagą do podejmowanie decyzji</li><li>nastawieniem na realizację celów, a nie zadań</li><li>umiejętnością definiowania celów, a nie czekaniem na ich wskazywanie</li><li>transparentną komunikacją, szczerością, chęcią dawania feedbacku i przyjmowania go</li><li>otwartością na ścisłą pracę z zespołem z zespołem IT, włączając ciągłą naukę technologii</li><li>serdecznym podejściem do pracy zespołowej i otwartością na pracę z Klientem</li><li>umiejętność szybkiej  pracy na 2-3 projektach równolegle</li><li>umiejętnością uczenia się nowych rzeczy również poprzez popełnianie błędów i ich ewaluację  </li></ul><h3>Nasze oczekiwania co do kompetencji:</h3><ul><li>przeprowadzonych co najmniej 20 wywiadów z użytkownikami i Klientami</li><li>przeprowadzenie co najmniej 5 warsztatów projektowych w konkretnej metodyce - np  Google Design Sprint</li><li>zaprojektowanych co najmniej 5 interfejsów mobilnych i 10 interfejsów webowych, które są wdrożone i mają co najmniej łącznie 100 000 aktywnych użytkowników</li><li>znajomość praktyczna narzędzi takich jak Axure, Google Analytics, Hot Jar</li><li>umiejętność argumentacji swoich decyzji projektowych w oparciu o dane</li><li>znajomości metodologii badań i projektowania i dostosowania jej do realizacji konkretnych celów</li><li>znajomość metodyki Scrum,</li><li>chęć rozwoju/szukanie nowych trendów w zakresie data science, machine learning i UX</li><li>mile widziane znajomość technologii takich jak HTML5, CSS3, JavaScript</li><li>mile widziana znajomość Material Design <a href="https://material.io/design/">https://material.io/design/</a></li></ul><h4>Co oferujemy?</h4><ul><li>samodzielność  i pracę w zwinnym i interdyscyplinarnym zespole (metodyka scrum)</li><li>wdrażanie własnych pomysłów</li><li>nastawienie na rozwój i na nowe doświadczenia</li><li>luźną atmosferę i uporządkowany system pracy</li><li>wynagrodzenie adekwatne do doświadczenia (przewidujemy widełki od 5 000 zł do 10 000 zł na rękę)</li><li>dobrze skomunikowaną lokalizację na Powiślu (okolice Mostu Poniatowskiego, w sąsiedztwie metro Centrum Nauki Kopernik)</li><li>współpracę B2B</li><li>prenumerata  MIT Technology Review, The Wired</li><li>dostęp do Audiobooków w pracy</li><li>możliwość - po uzgodnieniu - do wykorzystania biura do własnych celów</li><li>2 monitory do dyspozycji</li><li>komputer do uzgodnienia</li></ul><blockquote>UX Designer</blockquote>		96
\.


--
-- Data for Name: main_newsindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_newsindexpage (page_ptr_id) FROM stdin;
10
\.


--
-- Data for Name: main_newspage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_newspage (page_ptr_id, headline, headline_pl, headline_en, publication_date, body, body_pl, body_en, photo_id, marked, specialization_id, cta_question, cta_question_en, cta_question_pl) FROM stdin;
31	Warsztaty kierowane do Instytucji Kultury i Managerów Projektu, którzy chcą zwiększyć efektywność zarządzania projektami, usprawnić procesy decyzyjne oraz zwiększyć wartość biznesową produktu.	Warsztaty kierowane do Instytucji Kultury i Managerów Projektu, którzy chcą zwiększyć efektywność zarządzania projektami, usprawnić procesy decyzyjne oraz zwiększyć wartość biznesową produktu.	\N	2019-07-03	<h3>Zakres:</h3><ul><li>wstęp do metodyk zwinnych: Scrum, Kanban, Lean Management</li><li>iteracyjny model prowadzenia projektów vs. Waterfall</li><li>budowanie zachowań empirycznego zarządzania</li><li>wskazanie kluczowych interesariuszy oraz zarządzanie nimi</li><li>wykorzystanie metryk biznesowych</li><li>budowa rozwiązań na styku zwinności i technologii</li><li>rola managera w zwinnej organizacji</li><li>rola PO w instytucji kultury</li><li>PO vs Manager Projektu - podobieństwa i różnice</li><li>PO kontra Interesariusze</li><li>PO kontra Zespół Deweloperski</li><li>Współpraca PO z SM</li><li>Narzędzia PO do zwinnego zarządzania</li></ul><h3>Dla kogo dedykowane jest szkolenie?<br/><br/>Jeśli:</h3><ul><li>chcesz nauczyć się zarządzać zmianą</li><li>szukasz metod na usprawnienie procesu</li><li>chcesz mieć stały dostęp i wiedzę nad czym pracuje zespół deweloperski</li><li>chcesz mieć wpływ na postęp prac i rozwój produktu</li><li>chcesz dostosować produkt do zmieniających się warunków biznesowych</li></ul><p></p><blockquote>To będzie ekscytujący warsztat!</blockquote><p></p><p>To szkolenie jest dla Ciebie.</p>	<h3>Zakres:</h3><ul><li>wstęp do metodyk zwinnych: Scrum, Kanban, Lean Management</li><li>iteracyjny model prowadzenia projektów vs. Waterfall</li><li>budowanie zachowań empirycznego zarządzania</li><li>wskazanie kluczowych interesariuszy oraz zarządzanie nimi</li><li>wykorzystanie metryk biznesowych</li><li>budowa rozwiązań na styku zwinności i technologii</li><li>rola managera w zwinnej organizacji</li><li>rola PO w instytucji kultury</li><li>PO vs Manager Projektu - podobieństwa i różnice</li><li>PO kontra Interesariusze</li><li>PO kontra Zespół Deweloperski</li><li>Współpraca PO z SM</li><li>Narzędzia PO do zwinnego zarządzania</li></ul><h3>Dla kogo dedykowane jest szkolenie?<br/><br/>Jeśli:</h3><ul><li>chcesz nauczyć się zarządzać zmianą</li><li>szukasz metod na usprawnienie procesu</li><li>chcesz mieć stały dostęp i wiedzę nad czym pracuje zespół deweloperski</li><li>chcesz mieć wpływ na postęp prac i rozwój produktu</li><li>chcesz dostosować produkt do zmieniających się warunków biznesowych</li></ul><p></p><blockquote>To będzie ekscytujący warsztat!</blockquote><p></p><p>To szkolenie jest dla Ciebie.</p>		133	f	27	Chcesz wiedzieć więcej?	\N	Chcesz wiedzieć więcej?
14	Sprawdź jak Data Science  może rozwinąć Twój biznes.	Sprawdź jak Data Science  może rozwinąć Twój biznes.	\N	2019-05-29	<p>Obecnie mamy do czynienia z podażą danych na niespotykaną wcześniej skalę. Jest to zarówno <b>zagrożenie</b>, jak i<b> szansa</b> dla uzyskiwanych wyników biznesowych na podstawie<b> kluczowych danych</b> zbieranych przez organizację. Dzięki właściwemu wykorzystywaniu danych w organizacji oraz implementacji dostosowanych rozwiązań wykorzystujących <b>Data Science</b> osiągniesz przewagę konkurencyjną automatyzując część prac oraz ułatwiając podejmowanie decyzji Twoim pracownikom.</p><p></p><h3>Dowiedz się, w jaki sposób wykorzystać Data Science w Twojej organizacji.</h3><p></p><p></p><embed alt="seniorzy.jpg" embedtype="image" format="fullwidth" id="138"/><p></p><h2>Szkolenie z<b> Zarządzania Biznesem przez Dane</b> (DDB)</h2><p></p><p></p><p><b>Największymi barierami</b> występującymi wśród naszych klientów przed wykorzystywaniem danych do zarządzania organizacją oraz optymalizacją działań są:</p><ul><li>brak świadomości dotyczącej szans płynących z transformacji organizacji w Data Driven Business, czyli podejmowania decyzji biznesowych w ramach organizacji na podstawie wniosków płynących z danych,</li></ul><p></p><ul><li>brak odwagi do zdobycia nowych kompetencji w zakresie i sposobie wykorzystywania danych do osiągnięcia korzyści biznesowych.</li></ul><p></p><p>W związku z tym niezbędne działanie to <b>inwestycja w edukację</b>.</p><h4></h4><p></p><h4><b>Celem szkolenia jest przekazanie jego uczestnikom wiedzy w zakresie:</b></h4><ol><li>Pokazania dodanej wartości biznesowej związanej z transformacją w <b>Biznes Zarządzany przez Dane</b>.<br/></li><li>Omówienie możliwości związanych z automatyzacją procesów w oparciu o dane.<br/></li><li>Poznania zasad formułowania wniosków pochodzących z danych i wykorzystywania ich we właściwy sposób.<br/></li><li>Zdobycia wiedzy na temat rozpoczęcia zarządzania organizacją i zespołami w oparciu o dane.</li></ol><p></p><h4></h4><p></p><h4><b>Czas trwania:</b> od 6h*</h4><p>*czas trwania, zakres oraz szczegóły szkolenia ustalane indywidualnie na podstawie wywiadu z klientem.</p><h4></h4><p></p><h4>Dzięki naszym warsztatom zespoły i organizacje, które szkolimy wiedzą:</h4><ul><li>jak wykorzystywać dane w swoim zespole i organizacji.</li></ul><p></p><ul><li>jak poprawnie i rzetelnie: przetwarzać, wykorzystywać i gromadzić dane.</li></ul><p></p><ul><li>jak automatyzować procesy w oparciu o dane.</li></ul><p></p><ul><li>jak dokonać i wykorzystać transformację w <b>Biznes Zarządzany przez Dane</b> w celu wygenerowania dodatniej wartości biznesowej.</li></ul><h3></h3><p></p><h3>Zdobądź z nami wiedzę, która pozwoli Twojemu biznesowi na wykorzystanie najcenniejszego zasobu XXI wieku: danych.</h3><h3></h3><h3>Napisz na:</h3><p></p><h4><a href="mailto:kontakt@laboratorium.ee">kontakt@laboratorium.ee</a></h4><p></p><p></p><p></p><h2></h2><h2></h2><h2></h2><h2></h2><h2></h2><h2>Case study</h2><h4>Podczas jednodniowego szkolenia na Polsko-Niemieckich Dni Mediów nasz lider specjalizacji:<b> Innowacje Przez Dane</b> przeszkolił grupę dziennikarzy z zakresu implementacji <b>Data Driven Business</b> na grunt polskiego dziennikarstwa i wydawnictw.</h4><p></p><p>14 czerwca jako <b>Laboratorium EE, Centrum Badawczo-Rozwojowe</b> dzieliśmy się naszą wiedzą i doświadczeniem w zakresie danych i koncepcji <b>Data Driven Organisation</b>. Korzystając z naszego doświadczenia w zakresie zarządzania przez dane przekazaliśmy wiedzę dotyczącą wykorzystywania danych na gruncie polskiego dziennikarstwa.</p><p></p><p>Pomogliśmy dziennikarzom zdobyć umiejętności związane z dziennikarstwem opartym na danych. Na podstawie realnych przykładów dokonaliśmy transferu wiedzy pozwalającego na stworzenie w redakcjach i wydawnictwach kultury <b>Dziennikarstwa Opartego na Danych</b>, co przekłada się na wzrost świadomości dotyczących szans, które daje dobre zarządzanie danymi w organizacji oraz zespołach.</p>	<p>Obecnie mamy do czynienia z podażą danych na niespotykaną wcześniej skalę. Jest to zarówno <b>zagrożenie</b>, jak i<b> szansa</b> dla uzyskiwanych wyników biznesowych na podstawie<b> kluczowych danych</b> zbieranych przez organizację. Dzięki właściwemu wykorzystywaniu danych w organizacji oraz implementacji dostosowanych rozwiązań wykorzystujących <b>Data Science</b> osiągniesz przewagę konkurencyjną automatyzując część prac oraz ułatwiając podejmowanie decyzji Twoim pracownikom.</p><p></p><h3>Dowiedz się, w jaki sposób wykorzystać Data Science w Twojej organizacji.</h3><p></p><p></p><embed alt="seniorzy.jpg" embedtype="image" format="fullwidth" id="138"/><p></p><h2>Szkolenie z<b> Zarządzania Biznesem przez Dane</b> (DDB)</h2><p></p><p></p><p><b>Największymi barierami</b> występującymi wśród naszych klientów przed wykorzystywaniem danych do zarządzania organizacją oraz optymalizacją działań są:</p><ul><li>brak świadomości dotyczącej szans płynących z transformacji organizacji w Data Driven Business, czyli podejmowania decyzji biznesowych w ramach organizacji na podstawie wniosków płynących z danych,</li></ul><p></p><ul><li>brak odwagi do zdobycia nowych kompetencji w zakresie i sposobie wykorzystywania danych do osiągnięcia korzyści biznesowych.</li></ul><p></p><p>W związku z tym niezbędne działanie to <b>inwestycja w edukację</b>.</p><h4></h4><p></p><h4><b>Celem szkolenia jest przekazanie jego uczestnikom wiedzy w zakresie:</b></h4><ol><li>Pokazania dodanej wartości biznesowej związanej z transformacją w <b>Biznes Zarządzany przez Dane</b>.<br/></li><li>Omówienie możliwości związanych z automatyzacją procesów w oparciu o dane.<br/></li><li>Poznania zasad formułowania wniosków pochodzących z danych i wykorzystywania ich we właściwy sposób.<br/></li><li>Zdobycia wiedzy na temat rozpoczęcia zarządzania organizacją i zespołami w oparciu o dane.</li></ol><p></p><h4></h4><p></p><h4><b>Czas trwania:</b> od 6h*</h4><p>*czas trwania, zakres oraz szczegóły szkolenia ustalane indywidualnie na podstawie wywiadu z klientem.</p><h4></h4><p></p><h4>Dzięki naszym warsztatom zespoły i organizacje, które szkolimy wiedzą:</h4><ul><li>jak wykorzystywać dane w swoim zespole i organizacji.</li></ul><p></p><ul><li>jak poprawnie i rzetelnie: przetwarzać, wykorzystywać i gromadzić dane.</li></ul><p></p><ul><li>jak automatyzować procesy w oparciu o dane.</li></ul><p></p><ul><li>jak dokonać i wykorzystać transformację w <b>Biznes Zarządzany przez Dane</b> w celu wygenerowania dodatniej wartości biznesowej.</li></ul><h3></h3><p></p><h3>Zdobądź z nami wiedzę, która pozwoli Twojemu biznesowi na wykorzystanie najcenniejszego zasobu XXI wieku: danych.</h3><h3></h3><h3>Napisz na:</h3><p></p><h4><a href="mailto:kontakt@laboratorium.ee">kontakt@laboratorium.ee</a></h4><p></p><p></p><p></p><h2></h2><h2></h2><h2></h2><h2></h2><h2></h2><h2>Case study</h2><h4>Podczas jednodniowego szkolenia na Polsko-Niemieckich Dni Mediów nasz lider specjalizacji:<b> Innowacje Przez Dane</b> przeszkolił grupę dziennikarzy z zakresu implementacji <b>Data Driven Business</b> na grunt polskiego dziennikarstwa i wydawnictw.</h4><p></p><p>14 czerwca jako <b>Laboratorium EE, Centrum Badawczo-Rozwojowe</b> dzieliśmy się naszą wiedzą i doświadczeniem w zakresie danych i koncepcji <b>Data Driven Organisation</b>. Korzystając z naszego doświadczenia w zakresie zarządzania przez dane przekazaliśmy wiedzę dotyczącą wykorzystywania danych na gruncie polskiego dziennikarstwa.</p><p></p><p>Pomogliśmy dziennikarzom zdobyć umiejętności związane z dziennikarstwem opartym na danych. Na podstawie realnych przykładów dokonaliśmy transferu wiedzy pozwalającego na stworzenie w redakcjach i wydawnictwach kultury <b>Dziennikarstwa Opartego na Danych</b>, co przekłada się na wzrost świadomości dotyczących szans, które daje dobre zarządzanie danymi w organizacji oraz zespołach.</p>		55	t	6		\N	\N
\.


--
-- Data for Name: main_oldhomepage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_oldhomepage (page_ptr_id, header, header_en, header_pl, r_and_d_center_body, r_and_d_center_headline, specializations_headline, r_and_d_center_body_en, r_and_d_center_body_pl, r_and_d_center_headline_en, r_and_d_center_headline_pl, specializations_headline_en, specializations_headline_pl, join_us_background_id, join_us_body, join_us_body_en, join_us_body_pl, join_us_headline, join_us_headline_en, join_us_headline_pl) FROM stdin;
3	Poznaj nas przez nasze historie	\N	Poznaj nas przez nasze historie	Skupiamy sie na dokładnej analizie stawianych nam wyzwań.	Twoje prywatne centrum badawczo rozwojowe	Specjalizujemy się w	We focus on a thorough analysis of the challenges we are facing.	Skupiamy sie na dokładnej analizie stawianych nam wyzwań.	Your private R&D center	Twoje prywatne centrum badawczo rozwojowe	We specialize in	Specjalizujemy się w	132	Skupiamy się na dokładnej analizie stawianych przed nami wyzwań. Tworzymy rozwiązania szyte na miarę, innowacyjne, które stale udoskonalamy i rozbudowujemy.		Skupiamy się na dokładnej analizie stawianych przed nami wyzwań. Tworzymy rozwiązania szyte na miarę, innowacyjne, które stale udoskonalamy i rozbudowujemy.	Dołącz do naszego zespołu	\N	Dołącz do naszego zespołu
\.


--
-- Data for Name: main_subpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_subpage (page_ptr_id, header_subtitle, header_subtitle_pl, header_subtitle_en, header_external_link, content, content_pl, content_en, header_background_image_id) FROM stdin;
\.


--
-- Data for Name: main_subpagemetric; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_subpagemetric (id, sort_order, value, value_pl, value_en, property_name, property_name_pl, property_name_en, icon_id, page_id) FROM stdin;
\.


--
-- Data for Name: projects_projectmetric; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_projectmetric (id, sort_order, value, property_name, project_id) FROM stdin;
4	0	3	miesięczny okres badawczy	32
5	0	11	miesięcy intensywnych prac merytorycznych	39
6	1	50	zinwentaryzowanych budynków podczas pilotażu	39
7	2	6	warsztatów wydobywczych	39
8	3	20 min	zbieranie danych on-line w krótkim czasie	39
\.


--
-- Data for Name: projects_projectpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_projectpage (page_ptr_id, subtitle, subtitle_en, subtitle_pl, challenge, challenge_en, challenge_pl, process, process_en, process_pl, quote, quote_en, quote_pl, self_initiated, image_id, icon_id, short_name, background_image_id, project_url, masonry_featured_x, masonry_featured_y, masonry_title_dark, masonry_featured_mobile, quote_author) FROM stdin;
33	Interaktywny magazyn cyfrowy zbierający informację o innowacyjnych: liderach, produktach i rozwiązaniach z Europy Środkowo-wschodniej.	\N	Interaktywny magazyn cyfrowy zbierający informację o innowacyjnych: liderach, produktach i rozwiązaniach z Europy Środkowo-wschodniej.	[{"type": "text", "value": "<p>Chcemy, aby ka\\u017cdy m\\u00f3g\\u0142 pozna\\u0107 wszystkie odcienie rewolucji technologicznej, kt\\u00f3ra ma miejsce w Europie \\u015arodkowej i Wschodniej.</p>", "id": "8a592292-21c5-4890-8062-0085ea2afc6f"}]	[]	[{"type": "text", "value": "<p>Chcemy, aby ka\\u017cdy m\\u00f3g\\u0142 pozna\\u0107 wszystkie odcienie rewolucji technologicznej, kt\\u00f3ra ma miejsce w Europie \\u015arodkowej i Wschodniej.</p>", "id": "8a592292-21c5-4890-8062-0085ea2afc6f"}]	[{"type": "tiles_list", "value": [], "id": "ebff1540-48ae-4426-9f9c-21bce7287079"}]	[]	[{"type": "tiles_list", "value": [], "id": "ebff1540-48ae-4426-9f9c-21bce7287079"}]	<p>Dare to dive deeper.</p>		<p>Dare to dive deeper.</p>	t	\N	\N		142		f	f	f	f	<p>Nestor Kaszycki, Editor-in chief</p>
34	RODOpass to pierwsze w Polsce narzędzie cyfrowe w pełni wspierające przedsiębiorców w obszarze RODO.	\N	RODOpass to pierwsze w Polsce narzędzie cyfrowe w pełni wspierające przedsiębiorców w obszarze RODO.	[{"type": "text", "value": "Celem RODOpass jest u\\u0142atwienie wdro\\u017cenia i zarz\\u0105dzenia RODO, adekwatnego do potrzeb ka\\u017cdej firmy. \\u0141\\u0105cz\\u0105c kompetencje techniczne i\\u00a0prawne przygotowali\\u015bmy proste rozwi\\u0105zania technologiczne dla ma\\u0142ych oraz\\u00a0\\u015brednich przedsi\\u0119biorc\\u00f3w, a\\u00a0dla du\\u017cych firm i\\u00a0przedsi\\u0119biorc\\u00f3w, wymagaj\\u0105cych indywidualnego podej\\u015bcia, proponujemy us\\u0142ug\\u0119 wynajmu zewn\\u0119trznego IODO.</p>", "id": "e68405e7-f562-42cf-ab6d-272fe8ed9d99"}]	[]	[{"type": "text", "value": "Celem RODOpass jest u\\u0142atwienie wdro\\u017cenia i zarz\\u0105dzenia RODO, adekwatnego do potrzeb ka\\u017cdej firmy. \\u0141\\u0105cz\\u0105c kompetencje techniczne i\\u00a0prawne przygotowali\\u015bmy proste rozwi\\u0105zania technologiczne dla ma\\u0142ych oraz\\u00a0\\u015brednich przedsi\\u0119biorc\\u00f3w, a\\u00a0dla du\\u017cych firm i\\u00a0przedsi\\u0119biorc\\u00f3w, wymagaj\\u0105cych indywidualnego podej\\u015bcia, proponujemy us\\u0142ug\\u0119 wynajmu zewn\\u0119trznego IODO.</p>", "id": "e68405e7-f562-42cf-ab6d-272fe8ed9d99"}]	[{"type": "tiles_list", "value": [], "id": "b8e1331b-ee20-443f-8203-1ffb4732eb36"}]	[]	[{"type": "tiles_list", "value": [], "id": "b8e1331b-ee20-443f-8203-1ffb4732eb36"}]	<p>To narzędzie pokazało nam jak bezboleśnie dostosować procedury do RODO w naszej organizacji. Wygenerowany raport krok po kroku opisuje działania, które musieliśmy podjąć w temacie bezpieczeństwa danych osobowych i ich przetwarzania.</p>		<p>To narzędzie pokazało nam jak bezboleśnie dostosować procedury do RODO w naszej organizacji. Wygenerowany raport krok po kroku opisuje działania, które musieliśmy podjąć w temacie bezpieczeństwa danych osobowych i ich przetwarzania.</p>	t	\N	\N		143		t	t	t	t	<p>Magdalena Szymalak, Wiceprezeska stowarzyszenia Voces Gaudii</p>
32	Memo to trzymodułowa aplikacja wspierająca pamięć u seniorów.	\N	Memo to trzymodułowa aplikacja wspierająca pamięć u seniorów.	[{"type": "text", "value": "<p>Korzystanie z niego pomaga osobom starszym oswoi\\u0107 si\\u0119 z nowymi technologiami (i przez to po\\u015brednio zapobiega\\u0107 wykluczeniu cyfrowemu i kulturalnemu), ale tak\\u017ce, co bardzo wa\\u017cne \\u2013 stymulowa\\u0107 ich pami\\u0119\\u0107. Pami\\u0119ci jako takiej nie da si\\u0119 naprawi\\u0107, ale mo\\u017cna robi\\u0107 wiele, by jak najd\\u0142u\\u017cej utrzymywa\\u0107 j\\u0105 w dobrej kondycji i to w\\u0142a\\u015bnie by\\u0142o jednym z g\\u0142\\u00f3wnych zada\\u0144 naszego urz\\u0105dzenia. Wspiera ono tak\\u017ce nawi\\u0105zywanie i utrzymywanie relacji mi\\u0119dzypokoleniowych.</p>", "id": "2b6f6e6e-ff89-496a-9868-a16a93053f1b"}]	[]	[{"type": "text", "value": "<p>Korzystanie z niego pomaga osobom starszym oswoi\\u0107 si\\u0119 z nowymi technologiami (i przez to po\\u015brednio zapobiega\\u0107 wykluczeniu cyfrowemu i kulturalnemu), ale tak\\u017ce, co bardzo wa\\u017cne \\u2013 stymulowa\\u0107 ich pami\\u0119\\u0107. Pami\\u0119ci jako takiej nie da si\\u0119 naprawi\\u0107, ale mo\\u017cna robi\\u0107 wiele, by jak najd\\u0142u\\u017cej utrzymywa\\u0107 j\\u0105 w dobrej kondycji i to w\\u0142a\\u015bnie by\\u0142o jednym z g\\u0142\\u00f3wnych zada\\u0144 naszego urz\\u0105dzenia. Wspiera ono tak\\u017ce nawi\\u0105zywanie i utrzymywanie relacji mi\\u0119dzypokoleniowych.</p>", "id": "2b6f6e6e-ff89-496a-9868-a16a93053f1b"}]	[{"type": "tiles_list", "value": [{"heading": "Research i zbieranie potrzeb", "image": 93}, {"heading": "Prototypowanie i testy z u\\u017cytkownikami", "image": 81}, {"heading": "Iteracyjny i r\\u00f3wnoleg\\u0142y rozw\\u00f3j 3 aplikacji", "image": 79}], "id": "c166c937-c6c0-4ee2-bf79-fd60acb9cfec"}]	[]	[{"type": "tiles_list", "value": [{"heading": "Research i zbieranie potrzeb", "image": 93}, {"heading": "Prototypowanie i testy z u\\u017cytkownikami", "image": 81}, {"heading": "Iteracyjny i r\\u00f3wnoleg\\u0142y rozw\\u00f3j 3 aplikacji", "image": 79}], "id": "c166c937-c6c0-4ee2-bf79-fd60acb9cfec"}]	<p>Zamiast od razu przystąpić do projektowania urządzenia postanowiliśmy rozpocząć od dowiedzenia się, czego seniorzy potrzebują, jakiego typu urządzenia mają obecnie do dyspozycji oraz z jakiego typu barierami stykają się na co dzień (nie tylko jeśli chodzi o nowe technologie).</p>		<p>Zamiast od razu przystąpić do projektowania urządzenia postanowiliśmy rozpocząć od dowiedzenia się, czego seniorzy potrzebują, jakiego typu urządzenia mają obecnie do dyspozycji oraz z jakiego typu barierami stykają się na co dzień (nie tylko jeśli chodzi o nowe technologie).</p>	t	\N	118	Memo	141	https://www.projektmemo.pl/	t	t	t	t	<p>Angelika Losko, UX Designer</p>
39	Aplikacja przeznaczona dla pracowników gmin oraz osób uprawnionych do ewidencji i kontroli budynków mieszkalnych.	\N	Aplikacja przeznaczona dla pracowników gmin oraz osób uprawnionych do ewidencji i kontroli budynków mieszkalnych.	[{"type": "text", "value": "Poprawa jako\\u015bci powietrza w ca\\u0142ej Polsce poprzez stworzenie aplikacji, kt\\u00f3rej celem jest zbieranie danych ewidencyjnych budynk\\u00f3w mieszkalnych.", "id": "cbdf4088-cca3-49e5-8759-14164695eae4"}, {"type": "tiles_list", "value": [{"heading": "Innowacyjno\\u015b\\u0107", "description": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom  z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju. </p>"}], "id": "d8440d64-2ad7-457d-8b5b-e9c9ce5a013a"}]	[]	[{"type": "text", "value": "Poprawa jako\\u015bci powietrza w ca\\u0142ej Polsce poprzez stworzenie aplikacji, kt\\u00f3rej celem jest zbieranie danych ewidencyjnych budynk\\u00f3w mieszkalnych.", "id": "cbdf4088-cca3-49e5-8759-14164695eae4"}, {"type": "tiles_list", "value": [{"heading": "Innowacyjno\\u015b\\u0107", "description": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom  z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju. </p>"}], "id": "d8440d64-2ad7-457d-8b5b-e9c9ce5a013a"}]	[{"type": "tiles_list", "value": [{"heading": "Warsztaty wydobywcze", "image": 80}, {"heading": "Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych", "image": 97}, {"heading": "Testy z u\\u017cytkownikami", "image": 98}, {"heading": "Zbieranie danych", "image": 85}], "id": "a65f42f3-2520-4ad5-9d1e-6ffab509a3e6"}]	[]	[{"type": "tiles_list", "value": [{"heading": "Warsztaty wydobywcze", "image": 80}, {"heading": "Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych", "image": 97}, {"heading": "Testy z u\\u017cytkownikami", "image": 98}, {"heading": "Zbieranie danych", "image": 85}], "id": "a65f42f3-2520-4ad5-9d1e-6ffab509a3e6"}]	<p>“Czyste powietrze<br/> to wyzwanie cywilizacyjne, miara tego, czy Polska jest naprawdę dojrzałym krajem”</p>		<p>“Czyste powietrze<br/> to wyzwanie cywilizacyjne, miara tego, czy Polska jest naprawdę dojrzałym krajem”</p>	f	\N	137		136	https://play.google.com/store/apps/details?id=ee.laboratorium.zone	t	t	t	t	<p>Premier Mateusz Morawiecki</p>
\.


--
-- Data for Name: projects_specializationindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_specializationindexpage (page_ptr_id) FROM stdin;
5
\.


--
-- Data for Name: projects_specializationpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_specializationpage (page_ptr_id, how_we_work, how_we_work_en, how_we_work_pl, case_study, case_study_en, case_study_pl, tools, tools_en, tools_pl, long_name_en, long_name_pl, background_image_id, short_description, short_description_en, short_description_pl) FROM stdin;
19	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiedz\\u0119 eksperck\\u0105 i lata do\\u015bwiadczenia. Przyk\\u0142adamy ogromn\\u0105 wag\\u0119 do poznawania potrzeb i cel\\u00f3w naszych klient\\u00f3w. Zestawiamy je z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 arnga\\u017cuj\\u0105ce do\\u015bwiadczenia. Budujemy prototypy produkt\\u00f3w i badamy je z odbiorcami, aby vveryfikowa\\u0107 poczynione za\\u0142o\\u017cenia.", "id": "88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6"}, {"type": "tiles_list", "value": [{"heading": "Koncepcje produkt\\u00f3w cyfrowych", "image": 67}, {"heading": "Interaktywne prototypy", "image": 65}, {"heading": "Us\\u0142ugi online i offine", "image": 68}], "id": "e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f"}]	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiedz\\u0119 eksperck\\u0105 i lata do\\u015bwiadczenia. Przyk\\u0142adamy ogromn\\u0105 wag\\u0119 do poznawania potrzeb i cel\\u00f3w naszych klient\\u00f3w. Zestawiamy je z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 arnga\\u017cuj\\u0105ce do\\u015bwiadczenia. Budujemy prototypy produkt\\u00f3w i badamy je z odbiorcami, aby vveryfikowa\\u0107 poczynione za\\u0142o\\u017cenia.", "id": "88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6"}, {"type": "tiles_list", "value": [{"heading": "Koncepcje produkt\\u00f3w cyfrowych", "image": 36}, {"heading": "Interaktywne prototypy", "image": 36}, {"heading": "Us\\u0142ugi online i offine", "image": 36}], "id": "e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f"}]	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiedz\\u0119 eksperck\\u0105 i lata do\\u015bwiadczenia. Przyk\\u0142adamy ogromn\\u0105 wag\\u0119 do poznawania potrzeb i cel\\u00f3w naszych klient\\u00f3w. Zestawiamy je z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 arnga\\u017cuj\\u0105ce do\\u015bwiadczenia. Budujemy prototypy produkt\\u00f3w i badamy je z odbiorcami, aby vveryfikowa\\u0107 poczynione za\\u0142o\\u017cenia.", "id": "88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6"}, {"type": "tiles_list", "value": [{"heading": "Koncepcje produkt\\u00f3w cyfrowych", "image": 67}, {"heading": "Interaktywne prototypy", "image": 65}, {"heading": "Us\\u0142ugi online i offine", "image": 68}], "id": "e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "4693ba0a-f83b-4ffb-aa08-03db23925b11"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty z konsorcjum interesariuszy", "image": 64}, {"heading": "Prototyp aplikacji mobilnej", "image": 65}, {"heading": "Testy z u\\u017cytkownikami", "image": 66}], "id": "0c462b08-ecbd-4c98-b74a-68a4192626f5"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "fd68934e-e555-4c83-93c3-8e53f2cd76fa"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty z konsorcjum interesariuszy", "image": 36}, {"heading": "Prototyp aplikacji mobilnej", "image": 36}, {"heading": "Testy z u\\u017cytkownikami", "image": 36}], "id": "288eb908-dc43-4d70-ae6b-7580730d1f44"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "4693ba0a-f83b-4ffb-aa08-03db23925b11"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty z konsorcjum interesariuszy", "image": 64}, {"heading": "Prototyp aplikacji mobilnej", "image": 65}, {"heading": "Testy z u\\u017cytkownikami", "image": 66}], "id": "0c462b08-ecbd-4c98-b74a-68a4192626f5"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 145, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX."}, {"heading": "Badania i obserwacje", "image": 145, "description": "Budujemy prototypy naszych produkt\\u00f3w i badamy je z u\\u017cytkownikami, lub prowadzimy zdalne obesrwacje."}, {"heading": "Warsztaty wydobywcze", "image": 144, "description": "Moderujemy warsztaty maj\\u0105ce na celu poznanie potrzeb naszych klient\\u00f3w."}, {"heading": "Design sprinty", "image": 144, "description": "Organizujemy design sprinty, aby w bliskiej wsp\\u00f3\\u0142pracy z naszymi klientami szybko tworzy\\u0107 prze\\u0142omowe rozwi\\u0105zania."}], "id": "145268e9-8cbf-4d22-add9-26fb3172971e"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 70, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX"}, {"heading": "Badania i obserwacje", "image": 71, "description": "Budujemy prototypy naszych produkt\\u00f3w i badamy je z u\\u017cytkownikami, lub prowadzimy zdalne obesrwacje."}, {"heading": "Warsztaty wydobywcze", "image": 72, "description": "Moderujemy warsztaty maj\\u0105ce na celu poznanie potrzeb naszych klient\\u00f3w."}, {"heading": "Design sprinty", "image": 73, "description": "Organizujemy design sprinty, aby w bliskiej wsp\\u00f3\\u0142pracy z naszymi klientami szybko tworzy\\u0107 prze\\u0142omowe rozwi\\u0105zania."}], "id": "6e310976-6f94-4982-b164-6a27aea808aa"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 145, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX."}, {"heading": "Badania i obserwacje", "image": 145, "description": "Budujemy prototypy naszych produkt\\u00f3w i badamy je z u\\u017cytkownikami, lub prowadzimy zdalne obesrwacje."}, {"heading": "Warsztaty wydobywcze", "image": 144, "description": "Moderujemy warsztaty maj\\u0105ce na celu poznanie potrzeb naszych klient\\u00f3w."}, {"heading": "Design sprinty", "image": 144, "description": "Organizujemy design sprinty, aby w bliskiej wsp\\u00f3\\u0142pracy z naszymi klientami szybko tworzy\\u0107 prze\\u0142omowe rozwi\\u0105zania."}], "id": "145268e9-8cbf-4d22-add9-26fb3172971e"}]	Creating digital services and products	Tworzenie usług i produktów cyfrowych	135	<h3><b>Projektujemy produkty cyfrowe i usługi w oparciu o najlepszą wiedzę ekspercką i lata doświadczenia. Zestawiamy potrzeby biznesowe z wymaganiami docelowych użytkowników lub odbiorców usługi, aby tworzyć angażujące doświadczenia.</b></h3>		<h3><b>Projektujemy produkty cyfrowe i usługi w oparciu o najlepszą wiedzę ekspercką i lata doświadczenia. Zestawiamy potrzeby biznesowe z wymaganiami docelowych użytkowników lub odbiorców usługi, aby tworzyć angażujące doświadczenia.</b></h3>
6	[{"type": "text", "value": "Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych  Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Inwentaryzacja danych", "image": 85}, {"heading": "Data Science", "image": 86}, {"heading": "Machine Learning", "image": 87}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "text", "value": "Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych. Doradzamy jak wykorzystywa\\u0107 dane w prosceach bizensowych i systmahc klasyfikacji, predykacji i wykrywaniu nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Inwentaryzacja danych", "image": 34}, {"heading": "Data Science", "image": 34}, {"heading": "Machine Learning", "image": 34}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "text", "value": "Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych  Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Inwentaryzacja danych", "image": 85}, {"heading": "Data Science", "image": 86}, {"heading": "Machine Learning", "image": 87}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 81}, {"heading": "Analiza danych historycznych o projektach", "image": 82}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 83}, {"heading": "Przewidywanie szansy na realizacj\\u0119 projekt\\u00f3w", "image": 84}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 20}, {"heading": "Analiza danych historycznych o projektach", "image": 21}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 22}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 81}, {"heading": "Analiza danych historycznych o projektach", "image": 82}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 83}, {"heading": "Przewidywanie szansy na realizacj\\u0119 projekt\\u00f3w", "image": 84}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Analiza i consulting", "image": 144, "description": "Analizujemy dane i dostarczamy rekomendacji.  Doradzamy jak Twoja organizacja mo\\u017ce wykorzysta\\u0107 potencja\\u0142 danych."}, {"heading": "Segmentacja i klasyfikacja", "image": 144, "description": "Pomagamy zidentyfikowa\\u0107 najbardziej warto\\u015bciowych klient\\u00f3w."}, {"heading": "Predykcje i rekomendacje", "image": 145, "description": "Budujemy systemy przewiduj\\u0105ce zachowania klient\\u00f3w oraz systemy rekomenduj\\u0105ce."}, {"heading": "Wykrywanie anomalii", "image": 145, "description": "Pomagamy odnale\\u017a\\u0107 nietypowe przypadki, anomalie i nadu\\u017cycia."}], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	[{"type": "tiles_with_description_list", "value": [], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Analiza i consulting", "image": 144, "description": "Analizujemy dane i dostarczamy rekomendacji.  Doradzamy jak Twoja organizacja mo\\u017ce wykorzysta\\u0107 potencja\\u0142 danych."}, {"heading": "Segmentacja i klasyfikacja", "image": 144, "description": "Pomagamy zidentyfikowa\\u0107 najbardziej warto\\u015bciowych klient\\u00f3w."}, {"heading": "Predykcje i rekomendacje", "image": 145, "description": "Budujemy systemy przewiduj\\u0105ce zachowania klient\\u00f3w oraz systemy rekomenduj\\u0105ce."}, {"heading": "Wykrywanie anomalii", "image": 145, "description": "Pomagamy odnale\\u017a\\u0107 nietypowe przypadki, anomalie i nadu\\u017cycia."}], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	Processes automation based on data	Automatyzacja procesów w oparciu o dane	134	<h3><b>Inwestując w rozwiązania oparte na data science i machine learning Twoja firma rozwija się podejmując rozsądne ryzyko.</b></h3>		<h3><b>Inwestując w rozwiązania oparte na data science i machine learning Twoja firma rozwija się podejmując rozsądne ryzyko.</b></h3>
27	[{"type": "text", "value": "Organizujemy warsztaty dla zespo\\u0142\\u00f3w przygotowuj\\u0105cych si\\u0119 do wdro\\u017cenia frameworku Scrum.  Naszym klientom, kt\\u00f3rzy chc\\u0105 zacz\\u0105\\u0107 pracowa\\u0107 zwinnie, udost\\u0119pniamy naszych certyfikowanych Scrum Master\\u00f3w. Doradzamy organizacjom w zakresie transformacji Scruma oraz zapewniamy wsparcie powdro\\u017ceniowe na ka\\u017cdym szczeblu organizacji.", "id": "6b010336-9413-468e-8a90-099612000b57"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty", "image": 74}, {"heading": "Zarz\\u0105dzanie procesami", "image": 76}, {"heading": "Coaching i wsparcie zespo\\u0142\\u00f3w zwinnych", "image": 75}], "id": "a39b959d-df56-4439-a053-169f737ec474"}]	[]	[{"type": "text", "value": "Organizujemy warsztaty dla zespo\\u0142\\u00f3w przygotowuj\\u0105cych si\\u0119 do wdro\\u017cenia frameworku Scrum.  Naszym klientom, kt\\u00f3rzy chc\\u0105 zacz\\u0105\\u0107 pracowa\\u0107 zwinnie, udost\\u0119pniamy naszych certyfikowanych Scrum Master\\u00f3w. Doradzamy organizacjom w zakresie transformacji Scruma oraz zapewniamy wsparcie powdro\\u017ceniowe na ka\\u017cdym szczeblu organizacji.", "id": "6b010336-9413-468e-8a90-099612000b57"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty", "image": 74}, {"heading": "Zarz\\u0105dzanie procesami", "image": 76}, {"heading": "Coaching i wsparcie zespo\\u0142\\u00f3w zwinnych", "image": 75}], "id": "a39b959d-df56-4439-a053-169f737ec474"}]	[{"type": "heading", "value": "Comarch", "id": "7f8937ed-3505-4db4-b367-beb3e84812dc"}, {"type": "tiles_list", "value": [{"heading": "Przygotowanie i wprowadzenie zespo\\u0142u w metodyki zwinne", "image": 77}, {"heading": "Zarz\\u0105dzanie procesem i wdro\\u017cenie wydarze\\u0144", "image": 78}, {"heading": "Aktywne wspieranie Scrum Master\\u00f3w przez Agile Coacha", "image": 79}, {"heading": "Opracowanie warsztat\\u00f3w i narz\\u0119dzi usprawniaj\\u0105cych prac\\u0119 zespo\\u0142\\u00f3w", "image": 80}], "id": "7ddcad79-3ee3-421d-bc66-97d6a0572d49"}]	[]	[{"type": "heading", "value": "Comarch", "id": "7f8937ed-3505-4db4-b367-beb3e84812dc"}, {"type": "tiles_list", "value": [{"heading": "Przygotowanie i wprowadzenie zespo\\u0142u w metodyki zwinne", "image": 77}, {"heading": "Zarz\\u0105dzanie procesem i wdro\\u017cenie wydarze\\u0144", "image": 78}, {"heading": "Aktywne wspieranie Scrum Master\\u00f3w przez Agile Coacha", "image": 79}, {"heading": "Opracowanie warsztat\\u00f3w i narz\\u0119dzi usprawniaj\\u0105cych prac\\u0119 zespo\\u0142\\u00f3w", "image": 80}], "id": "7ddcad79-3ee3-421d-bc66-97d6a0572d49"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Roadmapy projekt\\u00f3w", "image": 144, "description": "Tworzymy plany okre\\u015blaj\\u0105ce kierunki rozwoju projekt\\u00f3w w \\u015brodowisku Agile zorientowane na realizacj\\u0119 cel\\u00f3w biznesowych."}, {"heading": "Artefakty Scruma", "image": 144, "description": "Zapewniamy wysok\\u0105 przejrzysto\\u015b\\u0107\\u00a0i efektywno\\u015b\\u0107 element\\u00f3w reprezentuj\\u0105cych prac\\u0119 i warto\\u015bci, gwarantuj\\u0105c prawid\\u0142owe funkcjonowanie procesu."}, {"heading": "Wydarzenia Scrumowe", "image": 145, "description": "Optymalizujemy ilo\\u015b\\u0107 i czas spotka\\u0144 wprowadzaj\\u0105c wydarzenia posiadaj\\u0105ce okre\\u015blone cele oraz nastawione na osi\\u0105gni\\u0119cie konkretnych rezultat\\u00f3w zgodnie z metodyk\\u0105 Scrum."}, {"heading": "Scrum Guide", "image": 145, "description": "Wszystkie wprowadzane rozwi\\u0105zania s\\u0105 zgodne z najnowszym Scrum Guide co gwarantuj\\u0105 nasi certyfikowani Scrum Masterzy."}], "id": "cb8855a8-bd8f-4738-839c-42cc26d466a5"}]	[{"type": "tiles_with_description_list", "value": [], "id": "bf68332f-9ddb-42e8-b7f9-55d73e014325"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Roadmapy projekt\\u00f3w", "image": 144, "description": "Tworzymy plany okre\\u015blaj\\u0105ce kierunki rozwoju projekt\\u00f3w w \\u015brodowisku Agile zorientowane na realizacj\\u0119 cel\\u00f3w biznesowych."}, {"heading": "Artefakty Scruma", "image": 144, "description": "Zapewniamy wysok\\u0105 przejrzysto\\u015b\\u0107\\u00a0i efektywno\\u015b\\u0107 element\\u00f3w reprezentuj\\u0105cych prac\\u0119 i warto\\u015bci, gwarantuj\\u0105c prawid\\u0142owe funkcjonowanie procesu."}, {"heading": "Wydarzenia Scrumowe", "image": 145, "description": "Optymalizujemy ilo\\u015b\\u0107 i czas spotka\\u0144 wprowadzaj\\u0105c wydarzenia posiadaj\\u0105ce okre\\u015blone cele oraz nastawione na osi\\u0105gni\\u0119cie konkretnych rezultat\\u00f3w zgodnie z metodyk\\u0105 Scrum."}, {"heading": "Scrum Guide", "image": 145, "description": "Wszystkie wprowadzane rozwi\\u0105zania s\\u0105 zgodne z najnowszym Scrum Guide co gwarantuj\\u0105 nasi certyfikowani Scrum Masterzy."}], "id": "cb8855a8-bd8f-4738-839c-42cc26d466a5"}]	\N	\N	61	<p>Wdrażamy podejście projektowe i zwinne metodyki zarządzania projektami w procesie wytwarzania oraz utrzymywania produktów. Takie podejście pozwala na szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia środków.</p>		<p>Wdrażamy podejście projektowe i zwinne metodyki zarządzania projektami w procesie wytwarzania oraz utrzymywania produktów. Takie podejście pozwala na szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia środków.</p>
\.


--
-- Data for Name: projects_teamindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teamindexpage (page_ptr_id, who_we_are, who_we_are_pl, who_we_are_en, our_values, our_values_pl, our_values_en) FROM stdin;
16	<h2>Organizacja, którą tworzą ludzie<br/></h2><h4>Nasz zespół pracuje na warszawskim Powiślu na ostatnim piętrze kamienicy przy ul. 3 maja 2. To właśnie w tym miejscu w efekcie naszej współpracy i świadomym oraz samodzielnym dążeniu do spełnienia wyznaczonych przez zespół celów powstają nasze produkty, pomysły i rozwiązania.</h4><p><br/><br/>W Laboratorium EE pracują najwybitniejsi specjaliści, którzy realizują projekty będące dla nich wyzwaniem intelektualnym. Stawiamy na różnorodność, ponieważ wierzymy, że to właśnie mnogość perspektyw na którą składa się zróżnicowane zaplecze światopoglądowe, zawodowe i kulturowe pozwalają na stworzenie przez zespół najlepszych możliwych rozwiązań.<br/><br/> Pracowaliśmy m.in. dla takich klientów jak: Biblioteka Narodowa, Naczelna Akademicka Sieć Komputerowa, Orange, Agora S.A, Bank Gospodarstwa Krajowego, Comarch, Ministerstwo Przedsiębiorczości i Technologii, PayU, Ministerstwo Cyfryzacji, Pracownia Badań i Innowacji Społecznych “Stocznia”. Wszystkie zrealizowane przez nas projekty cechowały się dokładnie przeanalizowanym połączeniem potrzeb użytkownika i realizowaniem celów społecznych lub biznesowych.<br/>Niektóre z naszych projektów to:</p><ol><li><a href="https://www.projektmemo.pl/">Projekt Memo</a></li><li><a href="https://polona.pl/">Polona</a></li><li><a href="http://sonar.wyborcza.pl/sonar/0,0.html">SONAR</a></li><li><a href="https://rodopass.pl/">RODOpass</a></li><li><a href="http://www.demo.e-isbn.pl/">E-ISBN</a></li><li><a href="http://www.demo.e-isbn.pl/">Kultura Dostępna</a></li><li><a href="https://zone.gov.pl/">ZONE</a></li></ol>	<h2>Organizacja, którą tworzą ludzie<br/></h2><h4>Nasz zespół pracuje na warszawskim Powiślu na ostatnim piętrze kamienicy przy ul. 3 maja 2. To właśnie w tym miejscu w efekcie naszej współpracy i świadomym oraz samodzielnym dążeniu do spełnienia wyznaczonych przez zespół celów powstają nasze produkty, pomysły i rozwiązania.</h4><p><br/><br/>W Laboratorium EE pracują najwybitniejsi specjaliści, którzy realizują projekty będące dla nich wyzwaniem intelektualnym. Stawiamy na różnorodność, ponieważ wierzymy, że to właśnie mnogość perspektyw na którą składa się zróżnicowane zaplecze światopoglądowe, zawodowe i kulturowe pozwalają na stworzenie przez zespół najlepszych możliwych rozwiązań.<br/><br/> Pracowaliśmy m.in. dla takich klientów jak: Biblioteka Narodowa, Naczelna Akademicka Sieć Komputerowa, Orange, Agora S.A, Bank Gospodarstwa Krajowego, Comarch, Ministerstwo Przedsiębiorczości i Technologii, PayU, Ministerstwo Cyfryzacji, Pracownia Badań i Innowacji Społecznych “Stocznia”. Wszystkie zrealizowane przez nas projekty cechowały się dokładnie przeanalizowanym połączeniem potrzeb użytkownika i realizowaniem celów społecznych lub biznesowych.<br/>Niektóre z naszych projektów to:</p><ol><li><a href="https://www.projektmemo.pl/">Projekt Memo</a></li><li><a href="https://polona.pl/">Polona</a></li><li><a href="http://sonar.wyborcza.pl/sonar/0,0.html">SONAR</a></li><li><a href="https://rodopass.pl/">RODOpass</a></li><li><a href="http://www.demo.e-isbn.pl/">E-ISBN</a></li><li><a href="http://www.demo.e-isbn.pl/">Kultura Dostępna</a></li><li><a href="https://zone.gov.pl/">ZONE</a></li></ol>		[{"type": "description", "value": "<h2>My\\u015blimy kodem, tworzymy sercem<br/></h2><h4>Misj\\u0105 Laboratorium EE jest zrzeszanie i zatrudnianie zespo\\u0142u najlepszych specjalist\\u00f3w, kt\\u00f3ry jest w stanie samodzielnie tworzy\\u0107 innowacyjne rozwi\\u0105zania w ramach naszych trzech specjalizacji:</h4><ul><li>Innowacje w oparciu o dane</li><li>Produkty i us\\u0142ugi cyfrowe</li><li>Optymalizacja proces\\u00f3w wytw\\u00f3rczych</li></ul><p>Celem naszej organizacji jest zmienianie \\u015bwiata przez nowe technologie. Dokonujemy implementacji innowacyjnych rozwi\\u0105za\\u0144 technologicznych b\\u0119d\\u0105cych efektem naszych prac badawczych i rozwojowych na p\\u0142aszczy\\u017anie spo\\u0142ecznej i biznesowej.</p><p>Nasza firma jest sp\\u00f3\\u0142k\\u0105 posiadaj\\u0105c\\u0105 status Centrum Badawczo Rozwojowego. W sk\\u0142ad organizacji wchodzi kilka mniejszych sp\\u00f3\\u0142ek, kt\\u00f3re powsta\\u0142y na potrzeby wypuszczenia niekt\\u00f3rych z naszych produkt\\u00f3w i efekt\\u00f3w prac badawczo-rozwojowych. Jeste\\u015bmy zainteresowani wsp\\u00f3\\u0142prac\\u0105 ze wszystkimi dla kt\\u00f3rych wa\\u017cna jest zmiana i ulepszanie \\u015bwiata za pomoc\\u0105 nowych technologii cyfrowych.</p><p>Od 2010 roku zbieramy i szukamy ambitnych i pe\\u0142nych pasji os\\u00f3b, kt\\u00f3re chc\\u0105 realizowa\\u0107 projekty maj\\u0105ce znaczenie. Centrum Badawczo Rozwojowe Laboratorium EE zrealizowa\\u0142o kilkadziesi\\u0105t najwi\\u0119kszych projekt\\u00f3w technologicznych posiadaj\\u0105cych wp\\u0142yw na \\u017cycie milion\\u00f3w mieszka\\u0144c\\u00f3w Polski. Obszary, w kt\\u00f3rych dzia\\u0142amy to:</p><ul><li>ochrona klimatu przy wsparciu nowych technologii,</li><li>media za pomoc\\u0105 stworzonego przez nas serwisu: Sonar, kt\\u00f3ry u\\u0142atwia monitorowanie swojego \\u015bwiatopogl\\u0105du, pozwala na \\u015bledzenie polityk\\u00f3w i informacji, kt\\u00f3re s\\u0105 interesuj\\u0105ce dla u\\u017cytkownika.</li><li>pomoc seniorom poprzez aplikacje mobilne wspieraj\\u0105cych kondycj\\u0119 pami\\u0119ci,</li><li>przedsi\\u0119biorcy, kt\\u00f3rzy mog\\u0105 w oszcz\\u0119dny spos\\u00f3b zaimplementowa\\u0107 przepisy RODO.</li></ul>", "id": "67553d3e-6ab4-449b-a5d2-b2521e983263"}, {"type": "tiles_list", "value": [{"heading": "10 lat dzia\\u0142alno\\u015bci", "image": 99}, {"heading": "ponad 200 zrealizowanych projekt\\u00f3w", "image": 79}], "id": "4da8ad45-0e74-4a3e-885c-14ad6b4b7490"}]	[{"type": "description", "value": "<h2>My\\u015blimy kodem, tworzymy sercem<br/></h2><h4>Misj\\u0105 Laboratorium EE jest zrzeszanie i zatrudnianie zespo\\u0142u najlepszych specjalist\\u00f3w, kt\\u00f3ry jest w stanie samodzielnie tworzy\\u0107 innowacyjne rozwi\\u0105zania w ramach naszych trzech specjalizacji:</h4><ul><li>Innowacje w oparciu o dane</li><li>Produkty i us\\u0142ugi cyfrowe</li><li>Optymalizacja proces\\u00f3w wytw\\u00f3rczych</li></ul><p>Celem naszej organizacji jest zmienianie \\u015bwiata przez nowe technologie. Dokonujemy implementacji innowacyjnych rozwi\\u0105za\\u0144 technologicznych b\\u0119d\\u0105cych efektem naszych prac badawczych i rozwojowych na p\\u0142aszczy\\u017anie spo\\u0142ecznej i biznesowej.</p><p>Nasza firma jest sp\\u00f3\\u0142k\\u0105 posiadaj\\u0105c\\u0105 status Centrum Badawczo Rozwojowego. W sk\\u0142ad organizacji wchodzi kilka mniejszych sp\\u00f3\\u0142ek, kt\\u00f3re powsta\\u0142y na potrzeby wypuszczenia niekt\\u00f3rych z naszych produkt\\u00f3w i efekt\\u00f3w prac badawczo-rozwojowych. Jeste\\u015bmy zainteresowani wsp\\u00f3\\u0142prac\\u0105 ze wszystkimi dla kt\\u00f3rych wa\\u017cna jest zmiana i ulepszanie \\u015bwiata za pomoc\\u0105 nowych technologii cyfrowych.</p><p>Od 2010 roku zbieramy i szukamy ambitnych i pe\\u0142nych pasji os\\u00f3b, kt\\u00f3re chc\\u0105 realizowa\\u0107 projekty maj\\u0105ce znaczenie. Centrum Badawczo Rozwojowe Laboratorium EE zrealizowa\\u0142o kilkadziesi\\u0105t najwi\\u0119kszych projekt\\u00f3w technologicznych posiadaj\\u0105cych wp\\u0142yw na \\u017cycie milion\\u00f3w mieszka\\u0144c\\u00f3w Polski. Obszary, w kt\\u00f3rych dzia\\u0142amy to:</p><ul><li>ochrona klimatu przy wsparciu nowych technologii,</li><li>media za pomoc\\u0105 stworzonego przez nas serwisu: Sonar, kt\\u00f3ry u\\u0142atwia monitorowanie swojego \\u015bwiatopogl\\u0105du, pozwala na \\u015bledzenie polityk\\u00f3w i informacji, kt\\u00f3re s\\u0105 interesuj\\u0105ce dla u\\u017cytkownika.</li><li>pomoc seniorom poprzez aplikacje mobilne wspieraj\\u0105cych kondycj\\u0119 pami\\u0119ci,</li><li>przedsi\\u0119biorcy, kt\\u00f3rzy mog\\u0105 w oszcz\\u0119dny spos\\u00f3b zaimplementowa\\u0107 przepisy RODO.</li></ul>", "id": "67553d3e-6ab4-449b-a5d2-b2521e983263"}, {"type": "tiles_list", "value": [{"heading": "10 lat dzia\\u0142alno\\u015bci", "image": 99}, {"heading": "ponad 200 zrealizowanych projekt\\u00f3w", "image": 79}], "id": "4da8ad45-0e74-4a3e-885c-14ad6b4b7490"}]	[{"type": "description", "value": "<p>Pracujemy zwinnie, poniewa\\u017c wiemy, \\u017ce nie ma dw\\u00f3ch takich samych projekt\\u00f3w. Opieramy si\\u0119 na plaskiej strukturze organizacji i prze\\u015bwiadczeniu, \\u017ce ka\\u017cdy cz\\u0142onek zespo\\u0142u jest w stanie wygenerowa\\u0107 warto\\u015b\\u0107 dodan\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\u0119 w realizowaniu naszych cel\\u00f3w.</p>", "id": "e046b871-706e-4fa3-a996-4f6677d75ca6"}, {"type": "tiles_list", "value": [], "id": "b87d03c6-6a4c-4870-975f-cf70a811ba23"}]
\.


--
-- Data for Name: projects_teammember; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teammember (page_ptr_id, name, photo_id, long_description, long_description_en, long_description_pl, short_description, short_description_en, short_description_pl) FROM stdin;
\.


--
-- Data for Name: projects_teammemberspecializationtag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teammemberspecializationtag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Data for Name: projects_topicpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_topicpage (page_ptr_id, marked, content, content_pl, content_en, background_image_id, phone_image_id) FROM stdin;
35	t	<p>ZONEapp</p>	<p>ZONEapp</p>		136	115
36	t	<p>Memo</p>	<p>Memo</p>		138	118
37	t	<p>Sonar</p>	<p>Sonar</p>		139	120
38	t	<p>RODOpass</p>	<p>RODOpass</p>		140	122
\.


--
-- Data for Name: projects_topicpage_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_topicpage_projects (id, topicpage_id, projectpage_id) FROM stdin;
1	35	32
2	35	34
3	36	32
4	37	33
5	38	34
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	UX	ux
2	BackEnd	backend
3	SCRUM	scrum
4	dziennikarstwo	dziennikarstwo
5	driven	driven
6	journalism	journalism
7	data	data
8	ludzie	ludzie
9	dziwni	dziwni
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	27	4	4
2	27	4	5
3	27	4	6
4	27	4	7
5	28	4	8
6	28	4	9
\.


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	2
2	1	2	2
3	1	1	3
4	1	2	3
5	1	1	5
6	1	2	5
7	1	1	6
8	1	2	6
\.


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, seo_title_pl, seo_title_en, search_description_pl, search_description_en, url_path_pl, url_path_en, slug_pl, slug_en, title_pl, title_en) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root		\N		\N	/	/	root	root	Root	Root
30	00010003000100040001	5	0	UX Designer	ux-designer	f	t	/strona-główna/ee/dolacz/ux-designer/		f		\N	\N	f	35	\N	f	2019-07-15 08:14:01.98453+02	2019-06-26 18:37:36.43723+02	\N	2019-07-15 08:14:02.120762+02	UX Designer	\N	\N			/strona-główna/ee/dolacz/ux-designer/	/strona-główna/ee/join-us/ux-designer/	ux-designer	\N	UX Designer	\N
40	00010003	2	1	Laboratorium EE	strona-główna	t	f	/strona-główna/		f		\N	\N	f	48	\N	f	2019-07-17 09:44:57.479661+02	2019-07-15 13:09:08.983012+02	\N	2019-07-17 09:44:57.527299+02	Laboratorium EE	\N	\N			/strona-główna/	/strona-główna/	strona-główna	\N	Laboratorium EE	\N
16	0001000300010002	4	0	o nas	o-nas	t	f	/strona-główna/ee/o-nas/		t		\N	\N	f	43	\N	f	2019-07-11 12:46:40.156149+02	2019-05-29 13:04:00.147143+02	\N	2019-07-11 12:46:40.221978+02	o nas	\N	\N			/strona-główna/ee/o-nas/	/strona-główna/ee/about-us/	o-nas	about-us	o nas	about us
39	000100030001000300010002	6	0	ZONEapp | Czyste Powietrze	zoneapp-czyste-powietrze	t	f	/strona-główna/ee/specializacje/innowacje-w-oparciu-o-dane/zoneapp-czyste-powietrze/		f		\N	\N	f	30	\N	f	2019-07-16 13:45:49.486522+02	2019-07-15 10:59:09.189441+02	\N	2019-07-16 13:45:49.570248+02	ZONEapp | Czyste Powietrze	\N	\N			/strona-główna/ee/specializacje/innowacje-w-oparciu-o-dane/zoneapp-czyste-powietrze/	/strona-główna/ee/specializations/innowacje-w-oparciu-o-dane/zoneapp-czyste-powietrze/	zoneapp-czyste-powietrze	\N	ZONEapp | Czyste Powietrze	\N
19	00010003000100030002	5	2	Produkty i usługi cyfrowe	produkty-i-usługi-cyfrowe	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/		f		\N	\N	f	31	\N	f	2019-07-12 16:08:52.903562+02	2019-05-30 16:48:33.39818+02	\N	2019-07-12 16:08:52.964671+02	Produkty i usługi cyfrowe	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/	/strona-główna/ee/specializations/digital-products-and-services/	produkty-i-usługi-cyfrowe	digital-products-and-services	Produkty i usługi cyfrowe	\N
33	000100030001000300020001	6	0	Dare Magazine	dare-magazine	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/dare-magazine/		f		\N	\N	f	30	\N	f	2019-07-12 13:09:54.858628+02	2019-07-04 09:28:19.486759+02	\N	2019-07-12 13:09:54.918056+02	Dare Magazine	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/dare-magazine/	/strona-główna/ee/specializations/digital-products-and-services/dare-magazine/	dare-magazine	\N	Dare Magazine	\N
14	00010003000100010004	5	0	Szkolenie z Data Driven Business	szkolenie-data-driven-journalism	t	f	/strona-główna/ee/aktualności/szkolenie-data-driven-journalism/		f		\N	\N	f	34	\N	f	2019-07-16 17:06:24.717943+02	2019-05-29 09:36:38.220127+02	\N	2019-07-16 17:06:24.799244+02	Szkolenie z Data Driven Business	\N	\N			/strona-główna/ee/aktualności/szkolenie-data-driven-journalism/	/strona-główna/ee/news/szkolenie-data-driven-journalism/	szkolenie-data-driven-journalism	szkolenie-data-driven-journalism	Szkolenie z Data Driven Business	\N
31	00010003000100010005	5	0	Realizuj przyrosty i dostarczaj wartość biznesową w Sprintach	realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach	t	f	/strona-główna/ee/aktualności/realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach/		f		\N	\N	f	34	\N	f	2019-07-12 12:16:55.508367+02	2019-07-08 10:43:26.673992+02	\N	2019-07-12 12:16:55.595035+02	Realizuj przyrosty i dostarczaj wartość biznesową w Sprintach	\N	\N			/strona-główna/ee/aktualności/realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach/	/strona-główna/ee/news/realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach/	realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach	\N	Realizuj przyrosty i dostarczaj wartość biznesową w Sprintach	\N
5	0001000300010003	4	3	Specjalizacje	specializacje	t	f	/strona-główna/ee/specializacje/		t		\N	\N	f	32	\N	f	2019-07-08 10:36:43.203517+02	2019-05-20 11:45:32.933843+02	\N	2019-07-08 10:36:43.24774+02	Specjalizacje	\N	\N			/strona-główna/ee/specializacje/	/strona-główna/ee/specializations/	specializacje	specializations	Specjalizacje	specializations
6	00010003000100030001	5	2	Innowacje w oparciu o dane	innowacje-w-oparciu-o-dane	t	f	/strona-główna/ee/specializacje/innowacje-w-oparciu-o-dane/		f		\N	\N	f	31	\N	f	2019-07-12 16:08:07.610831+02	2019-05-20 11:49:51.892698+02	\N	2019-07-12 16:08:07.654356+02	Innowacje w oparciu o dane	\N	\N			/strona-główna/ee/specializacje/innowacje-w-oparciu-o-dane/	/strona-główna/ee/specializations/innowacje-w-oparciu-o-dane/	innowacje-w-oparciu-o-dane	\N	Innowacje w oparciu o dane	\N
32	000100030001000300010001	6	0	Memo	memo	t	f	/strona-główna/ee/specializacje/innowacje-w-oparciu-o-dane/memo/		f		\N	\N	f	30	\N	f	2019-07-12 13:03:20.892361+02	2019-07-04 09:17:27.50311+02	\N	2019-07-12 13:03:20.946362+02	Memo	\N	\N			/strona-główna/ee/specializacje/innowacje-w-oparciu-o-dane/memo/	/strona-główna/ee/specializations/innowacje-w-oparciu-o-dane/memo/	memo	\N	Memo	\N
28	0001000300010005	4	0	Polityka prywatności	polityka-prywatności	t	f	/strona-główna/ee/polityka-prywatności/		f		\N	\N	f	45	\N	f	2019-06-17 12:44:47.18137+02	2019-06-17 09:24:36.83332+02	\N	2019-06-17 12:44:47.229809+02	Polityka prywatności	\N	\N			/strona-główna/ee/polityka-prywatności/	/strona-główna/ee/polityka-prywatności/	polityka-prywatności	\N	Polityka prywatności	\N
29	0001000300010006	4	0	Regulamin	regulamin	t	f	/strona-główna/ee/regulamin/		f		\N	\N	f	45	\N	f	2019-06-17 12:45:58.246186+02	2019-06-17 11:05:56.447567+02	\N	2019-06-17 12:45:58.299381+02	Regulamin	\N	\N			/strona-główna/ee/regulamin/	/strona-główna/ee/regulamin/	regulamin	\N	Regulamin	\N
35	0001000300010007	4	0	Ochrona klimatu	smog	t	f	/strona-główna/ee/smog/		f		\N	\N	f	46	\N	f	2019-07-12 12:52:07.822322+02	2019-07-05 13:01:41.696433+02	\N	2019-07-12 12:52:07.906241+02	Ochrona klimatu	\N	\N			/strona-główna/ee/smog/	/strona-główna/ee/smog/	smog	\N	Ochrona klimatu	\N
36	0001000300010008	4	0	Seniorzy	seniorzy	t	f	/strona-główna/ee/seniorzy/		f		\N	\N	f	46	\N	f	2019-07-12 12:54:13.810322+02	2019-07-08 10:27:52.495894+02	\N	2019-07-12 12:54:13.879503+02	Seniorzy	\N	\N			/strona-główna/ee/seniorzy/	/strona-główna/ee/seniorzy/	seniorzy	\N	Seniorzy	\N
37	0001000300010009	4	0	Media	media	t	f	/strona-główna/ee/media/		f		\N	\N	f	46	\N	f	2019-07-12 12:56:40.237305+02	2019-07-08 10:31:32.45748+02	\N	2019-07-12 12:56:40.494797+02	Media	\N	\N			/strona-główna/ee/media/	/strona-główna/ee/media/	media	\N	Media	\N
38	000100030001000A	4	0	Prawo	prawo	t	f	/strona-główna/ee/prawo/		f		\N	\N	f	46	\N	f	2019-07-12 12:57:36.905204+02	2019-07-08 10:33:56.617276+02	\N	2019-07-12 12:57:37.014022+02	Prawo	\N	\N			/strona-główna/ee/prawo/	/strona-główna/ee/prawo/	prawo	\N	Prawo	\N
10	0001000300010001	4	2	Aktualności	aktualności	t	f	/strona-główna/ee/aktualności/		f		\N	\N	f	37	\N	f	2019-06-19 12:12:24.095023+02	2019-05-28 16:08:25.294766+02	\N	2019-06-19 12:12:24.143837+02	Aktualności	\N	\N			/strona-główna/ee/aktualności/	/strona-główna/ee/news/	aktualności	news	Aktualności	news
34	000100030001000300020002	6	0	RODOpass	rodopass	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/rodopass/		f		\N	\N	f	30	\N	f	2019-07-12 13:15:10.419287+02	2019-07-04 11:04:18.802114+02	\N	2019-07-12 13:15:10.465017+02	RODOpass	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/rodopass/	/strona-główna/ee/specializations/digital-products-and-services/rodopass/	rodopass	\N	RODOpass	\N
27	00010003000100030004	5	0	Optymalizacja procesów wytwórczych	optymalizacja-procesów-wytwórczych	t	f	/strona-główna/ee/specializacje/optymalizacja-procesów-wytwórczych/		f		\N	\N	f	31	\N	f	2019-07-12 16:09:19.526804+02	2019-06-16 18:04:18.247453+02	\N	2019-07-12 16:09:19.581061+02	Optymalizacja procesów wytwórczych	\N	\N			/strona-główna/ee/specializacje/optymalizacja-procesów-wytwórczych/	/strona-główna/ee/specializations/optymalizacja-procesów-wytwórczych/	optymalizacja-procesów-wytwórczych	\N	Optymalizacja procesów wytwórczych	\N
8	0001000300010004	4	1	Dołącz do nas	dolacz	t	f	/strona-główna/ee/dolacz/		t		\N	\N	f	36	\N	f	2019-07-08 10:37:04.600003+02	2019-05-24 16:03:51.716611+02	\N	2019-07-08 10:37:04.647362+02	Dołącz do nas	\N	\N			/strona-główna/ee/dolacz/	/strona-główna/ee/join-us/	dolacz	join-us	Dołącz do nas	join us
3	000100030001	3	10	Laboratorium EE	ee	t	f	/strona-główna/ee/	Twoje prywatne centrum badawczo rozwojowe	f	W Laboratorium EE tworzymy:\r\nInnowacje w oparciu o dane\r\nProdukty cyfrowe\r\nUsługi cyfrowe\r\nOptymalizację procesów wytwórczych\r\n\r\nKorzystamy z technologii:\r\nMachine Learning\r\nData Science\r\nInwentaryzacja danych\r\nArtificial Intelligence \r\nFlutter\r\nWagtail \r\nPython\r\nDjango \r\nDjango Admin\r\nWarsztaty\r\nInteraktywne prototypy\r\nScrum\r\nAgile\r\nZarządzanie procesami\r\nCoaching i wsparcie zespołów zwinnych	\N	\N	f	29	\N	f	2019-07-17 13:12:37.853617+02	2019-05-20 11:40:14.829548+02	318	2019-07-17 13:12:37.970212+02	Laboratorium EE	Twoje prywatne centrum badawczo rozwojowe	Your private research and development center	W Laboratorium EE tworzymy:\r\nInnowacje w oparciu o dane\r\nProdukty cyfrowe\r\nUsługi cyfrowe\r\nOptymalizację procesów wytwórczych\r\n\r\nKorzystamy z technologii:\r\nMachine Learning\r\nData Science\r\nInwentaryzacja danych\r\nArtificial Intelligence \r\nFlutter\r\nWagtail \r\nPython\r\nDjango \r\nDjango Admin\r\nWarsztaty\r\nInteraktywne prototypy\r\nScrum\r\nAgile\r\nZarządzanie procesami\r\nCoaching i wsparcie zespołów zwinnych	In the EE Laboratory, we create:\r\nInnovations based on data\r\nDigital products\r\nDigital services\r\nOptimization of manufacturing processes\r\n\r\nWe use technology:\r\nMachine Learning\r\nData Science\r\nInventory of data\r\nArtificial Intelligence \r\nFlutter\r\nWagtail \r\nPython\r\nDjango \r\nDjango Admin\r\nWorkshops\r\nInteractive prototypes\r\nScrum\r\nAgile\r\nProcess management\r\nCoaching and support for agile teams	/strona-główna/ee/	/strona-główna/ee/	ee	ee	Laboratorium EE	Laboratorium EE
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
318	f	2019-07-17 13:12:37.853617+02	{"pk": 3, "path": "000100030001", "depth": 3, "numchild": 10, "title": "Laboratorium EE", "title_pl": "Laboratorium EE", "title_en": "Laboratorium EE", "draft_title": "Laboratorium EE", "slug": "ee", "slug_pl": "ee", "slug_en": "ee", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "/strona-g\\u0142\\u00f3wna/ee/", "url_path_pl": "/strona-g\\u0142\\u00f3wna/ee/", "url_path_en": "/strona-g\\u0142\\u00f3wna/ee/", "owner": null, "seo_title": "Twoje prywatne centrum badawczo rozwojowe", "seo_title_pl": "Twoje prywatne centrum badawczo rozwojowe", "seo_title_en": "Your private research and development center", "show_in_menus": false, "search_description": "W Laboratorium EE tworzymy:\\r\\nInnowacje w oparciu o dane\\r\\nProdukty cyfrowe\\r\\nUs\\u0142ugi cyfrowe\\r\\nOptymalizacj\\u0119 proces\\u00f3w wytw\\u00f3rczych\\r\\n\\r\\nKorzystamy z technologii:\\r\\nMachine Learning\\r\\nData Science\\r\\nInwentaryzacja danych\\r\\nArtificial Intelligence \\r\\nFlutter\\r\\nWagtail \\r\\nPython\\r\\nDjango \\r\\nDjango Admin\\r\\nWarsztaty\\r\\nInteraktywne prototypy\\r\\nScrum\\r\\nAgile\\r\\nZarz\\u0105dzanie procesami\\r\\nCoaching i wsparcie zespo\\u0142\\u00f3w zwinnych", "search_description_pl": "W Laboratorium EE tworzymy:\\r\\nInnowacje w oparciu o dane\\r\\nProdukty cyfrowe\\r\\nUs\\u0142ugi cyfrowe\\r\\nOptymalizacj\\u0119 proces\\u00f3w wytw\\u00f3rczych\\r\\n\\r\\nKorzystamy z technologii:\\r\\nMachine Learning\\r\\nData Science\\r\\nInwentaryzacja danych\\r\\nArtificial Intelligence \\r\\nFlutter\\r\\nWagtail \\r\\nPython\\r\\nDjango \\r\\nDjango Admin\\r\\nWarsztaty\\r\\nInteraktywne prototypy\\r\\nScrum\\r\\nAgile\\r\\nZarz\\u0105dzanie procesami\\r\\nCoaching i wsparcie zespo\\u0142\\u00f3w zwinnych", "search_description_en": "In the EE Laboratory, we create:\\r\\nInnovations based on data\\r\\nDigital products\\r\\nDigital services\\r\\nOptimization of manufacturing processes\\r\\n\\r\\nWe use technology:\\r\\nMachine Learning\\r\\nData Science\\r\\nInventory of data\\r\\nArtificial Intelligence \\r\\nFlutter\\r\\nWagtail \\r\\nPython\\r\\nDjango \\r\\nDjango Admin\\r\\nWorkshops\\r\\nInteractive prototypes\\r\\nScrum\\r\\nAgile\\r\\nProcess management\\r\\nCoaching and support for agile teams", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:40:14.829Z", "last_published_at": "2019-07-17T07:44:31.519Z", "latest_revision_created_at": "2019-07-17T07:44:31.413Z", "live_revision": null, "header": "Poznaj nas przez nasze historie", "header_pl": "Poznaj nas przez nasze historie", "header_en": null, "specializations_headline": "Specjalizujemy si\\u0119 w", "specializations_headline_pl": "Specjalizujemy si\\u0119 w", "specializations_headline_en": "We specialize in", "r_and_d_center_headline": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_pl": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_en": "Your private R&D center", "r_and_d_center_body": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144.", "r_and_d_center_body_pl": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144.", "r_and_d_center_body_en": "We focus on a thorough analysis of the challenges we are facing.", "join_us_headline": "Do\\u0142\\u0105cz do naszego zespo\\u0142u", "join_us_headline_pl": "Do\\u0142\\u0105cz do naszego zespo\\u0142u", "join_us_headline_en": null, "join_us_body": "Skupiamy si\\u0119 na dok\\u0142adnej analizie stawianych przed nami wyzwa\\u0144. Tworzymy rozwi\\u0105zania szyte na miar\\u0119, innowacyjne, kt\\u00f3re stale udoskonalamy i rozbudowujemy.", "join_us_body_pl": "Skupiamy si\\u0119 na dok\\u0142adnej analizie stawianych przed nami wyzwa\\u0144. Tworzymy rozwi\\u0105zania szyte na miar\\u0119, innowacyjne, kt\\u00f3re stale udoskonalamy i rozbudowujemy.", "join_us_body_en": "", "join_us_background": 132, "cooperators_logos": [{"pk": 4, "sort_order": 0, "page": 3, "image": 41}, {"pk": 10, "sort_order": 1, "page": 3, "image": 47}, {"pk": 5, "sort_order": 2, "page": 3, "image": 42}, {"pk": 9, "sort_order": 3, "page": 3, "image": 46}, {"pk": 8, "sort_order": 4, "page": 3, "image": 45}, {"pk": 7, "sort_order": 5, "page": 3, "image": 44}, {"pk": 12, "sort_order": 6, "page": 3, "image": 51}, {"pk": 6, "sort_order": 7, "page": 3, "image": 43}]}	\N	3	38
\.


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
1	laboratorium.ee	443	t	40	Laboratorium EE
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
1	https://www.youtube.com/watch?v=Bey4XXJAqS8	\N	video	<iframe width="480" height="270" src="https://www.youtube.com/embed/Bey4XXJAqS8?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	4K VIDEO ultrahd hdr sony 4K VIDEOS demo test nature relaxation movie for 4k oled tv	4K Eye	YouTube	https://i.ytimg.com/vi/Bey4XXJAqS8/hqdefault.jpg	480	270	2019-06-10 11:43:02.590785+02
\.


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
2	n.jpeg	original_images/n_4C00pQ4.jpeg	1920	1080	2019-05-20 11:47:32.657585+02	\N	\N	\N	\N	\N	258542	1	239397684dd79a3f2270e47313524d00ad95aa6d
3	n2.jpg	original_images/n2_FmPIaVw.jpg	600	401	2019-05-20 11:47:44.844693+02	\N	\N	\N	\N	\N	46251	1	6a7ce8c2c926a4d41906b1705d6f905994c97cbe
4	hammer1.jpeg	original_images/hammer1.jpeg	227	222	2019-05-20 11:48:17.262367+02	\N	\N	\N	\N	\N	4473	1	b6b838adc3c17a4cf5f3cb87f2033dd4f98f1b33
6	gazwyb.jpg	original_images/gazwyb.jpg	620	300	2019-05-28 10:30:00.695126+02	\N	\N	\N	\N	\N	16569	1	727e567b1635b18b05ab6db426c580dd02d2218b
7	PAYU-LOGO_GRADIENT_RGB.jpg	original_images/PAYU-LOGO_GRADIENT_RGB.jpg	851	478	2019-05-28 10:30:19.963077+02	\N	\N	\N	\N	\N	30277	1	749212d81c0444c246c0165e2aaf14a5d9622eb5
9	krishna.jpg	original_images/.jpg	428	606	2019-05-28 11:19:11.13507+02	\N	\N	\N	\N	\N	71233	1	b95777864454daac3da1888edb7cecbbec9f3cab
10	krishna2.png	original_images/krishna2.png	204	479	2019-05-28 11:59:44.312798+02	\N	\N	\N	\N	\N	276717	1	e4c0cf0fa0d561b87fa0340982c8a42cf42fd640
11	krshnold.jpeg	original_images/krshnold.jpeg	266	190	2019-05-28 12:00:02.079531+02	\N	\N	\N	\N	\N	10364	1	5af488e97c97c5b64ae549768578056b2746f016
12	quote.jpg	original_images/quote.jpg	640	640	2019-05-28 12:10:59.472437+02	\N	\N	\N	\N	\N	116185	1	5ae1bce6af80b01ef7511d3241db81232714bc03
13	P1010247-1440x720.jpg	original_images/P1010247-1440x720.jpg	1440	720	2019-05-28 16:51:33.206302+02	\N	\N	\N	\N	\N	207144	1	c58962a02b7bc0b059be9479df72afa889c9f256
14	komor.webp	original_images/komor2.jpeg	725	484	2019-05-29 09:32:17.33888+02	\N	\N	\N	\N	\N	56388	1	2bc521aa79ac598fef4e0a01d09af8cdd503a461
15	krowa-2-1440x720.jpg	original_images/donkey.jpg	450	204	2019-05-29 09:34:56.248064+02	\N	\N	\N	\N	\N	29064	1	0cf4ec74673b4294ee2f907bf1f5db88c44b10d0
16	kacz.jpeg	original_images/kacz.jpeg	266	189	2019-05-29 09:36:30.205012+02	\N	\N	\N	\N	\N	7741	1	a900c82c92c9733b75481150a8a32a0186d73525
17	Edward_Abramowski_(1868-1918).jpg	original_images/Edward_Abramowski_1868-1918.jpg	253	289	2019-05-29 14:56:28.579632+02	\N	\N	\N	\N	\N	11777	1	23074e9de7475086853ca5985860e56a7545772a
18	wag2.jpg	original_images/wag2_dpEV14N.jpg	220	217	2019-05-30 15:25:03.252838+02	\N	\N	\N	\N	\N	8814	1	0ee33c753a4a75d06926fa3cb7c3e2617b3ad8d5
19	wag3.jpg	original_images/wag3_Cs0PXPE.jpg	900	600	2019-05-30 15:25:23.706259+02	\N	\N	\N	\N	\N	55652	1	21eac1de8e4b3f94dd1a86033e4e3404d39a9d4e
20	case.jpeg	original_images/case.jpeg	212	238	2019-05-30 15:30:00.11683+02	\N	\N	\N	\N	\N	6215	1	ddf3d8e7b58c4a53d62b392198c6e42ea5aa4fdd
21	case2.jpg	original_images/case2.jpg	1451	1600	2019-05-30 15:30:39.307328+02	\N	\N	\N	\N	\N	187320	1	2f6b89ed6b60f1b5e74f6ea4582f914e951917c0
22	case3.jpg	original_images/case3.jpg	1500	973	2019-05-30 15:31:19.637762+02	\N	\N	\N	\N	\N	156277	1	a1676f6a0c03c3ff4f041204cacf51214b1e0c87
23	cross.png	original_images/cross.png	512	512	2019-05-30 16:42:55.563473+02	\N	\N	\N	\N	\N	4403	1	7639eb5b5bad54e309bdfa99c68431d1b2a7b1c6
24	220px-Theodore_Kaczynski_2.jpg	original_images/220px-Theodore_Kaczynski_2.jpg	220	220	2019-05-31 10:34:01.825559+02	\N	\N	\N	\N	\N	14754	1	2ffc9fc053a0b74e652b4195dba28670f8ed4dc8
25	dokt.jpeg	original_images/dokt.jpeg	275	183	2019-05-31 14:39:55.921073+02	\N	\N	\N	\N	\N	13955	1	48b59a9f15ca0fbd48f469cd787e3de4ae8813f4
26	wielblady	original_images/adult-animal-arabian-1718259.jpg	5403	3602	2019-06-10 11:44:28.383788+02	\N	\N	\N	\N	\N	2626484	1	d264917dcd22d153dbc21ff7334ee7fe7b25feaa
27	Firefox_Screenshot_2019-06-14T14-07-25.179Z.png	original_images/Firefox_Screenshot_2019-06-14T14-07-25.179Z.png	767	295	2019-06-14 16:09:13.201795+02	\N	\N	\N	\N	\N	137226	1	ec369abb054707797018f88fef8370f3119353fe
28	hero.jpg	original_images/hero.jpg	1920	890	2019-06-14 16:14:15.622808+02	\N	\N	\N	\N	\N	678647	1	16e8237005c5ca0f9d96ebd4743c401c0864d77d
29	code-coding-connection-943096.jpg	original_images/code-coding-connection-943096.jpg	6000	4000	2019-06-14 16:42:38.582692+02	\N	\N	\N	\N	\N	3366448	1	354a047c0acde7b92e8113d1f7e9a2d8b2451d52
30	144a930f-733c-45aa-8c72-09694490aa0c.jpg	original_images/144a930f-733c-45aa-8c72-09694490aa0c.jpg	2244	2244	2019-06-14 16:51:39.31891+02	\N	\N	\N	\N	\N	1661346	1	25f785f7972994c1aa3911db3203a414180e7cfc
31	vintage-robot-with-lots-of-black-negative-space.jpg	original_images/vintage-robot-with-lots-of-black-negative-space.jpg	4460	2973	2019-06-14 17:00:14.241858+02	\N	\N	\N	\N	\N	480968	1	26aa04c4face26758c788301eb9a11fa975e22a5
32	access-close-up-code-1089438.jpg	original_images/access-close-up-code-1089438.jpg	5760	3840	2019-06-16 18:02:10.346737+02	\N	\N	\N	\N	\N	5118188	1	3d1361ed842362392014a80d8ba5f1885eb5a413
33	ashwin-vaswani-1077871-unsplash.jpg	original_images/ashwin-vaswani-1077871-unsplash.jpg	4748	3165	2019-06-16 22:59:15.051469+02	\N	\N	\N	\N	\N	2955665	1	65233afbd8a3fd86111889241c77929cb602fce3
35	andrew-neel-143525-unsplash.jpg	original_images/andrew-neel-143525-unsplash.jpg	5472	3648	2019-06-16 23:02:15.701179+02	\N	\N	\N	\N	\N	3316849	1	30ed33c29e634400163e44d6e71b932adaca28ef
36	mike-yukhtenko-111373-unsplash.jpg	original_images/mike-yukhtenko-111373-unsplash.jpg	6000	4000	2019-06-16 23:03:48.00227+02	\N	\N	\N	\N	\N	3073514	1	a86543508ef1b9acaa12bddf0afdd6b64927fa61
34	adrien-olichon-762119-unsplash.jpg	original_images/adrien-olichon-762119-unsplash.jpg	6000	4000	2019-06-16 23:01:26.911964+02	\N	\N	\N	\N	\N	2724041	1	cbd3af63b05047dbe06bb3f1ba68a77702718517
37	333.jpg	original_images/333.jpg	6800	4093	2019-06-17 15:26:59.189936+02	\N	\N	\N	\N	\N	960277	1	b44b05e9c6fffea33912bdeac30ba3d267ca354a
38	123.jpg	original_images/123.jpg	6800	4093	2019-06-17 15:29:49.48072+02	\N	\N	\N	\N	\N	866471	1	23ab9e9c1a70b4442ef8627f7ad47b80ae19fc07
39	456.jpg	original_images/456.jpg	6800	4093	2019-06-17 15:33:13.373048+02	\N	\N	\N	\N	\N	844897	1	9637e472cc3254f11738c86d3d84ffddb89818b1
40	789.jpg	original_images/789.jpg	6800	4093	2019-06-17 15:38:27.194831+02	\N	\N	\N	\N	\N	681804	1	2f5560f6ee47d64eab1fd6b865105c71781bf554
41	agora.jpg	original_images/agora.jpg	418	79	2019-06-17 15:48:13.144342+02	\N	\N	\N	\N	\N	11251	1	ac3227304b1085ee8a7bfca588bbb942e4ef2d56
42	bn.jpg	original_images/bn.jpg	416	130	2019-06-17 15:48:22.547511+02	\N	\N	\N	\N	\N	15663	1	c2854df15a56fb805053934d53865a3bab12d1c0
43	il.jpg	original_images/il.jpg	418	134	2019-06-17 15:48:32.85388+02	\N	\N	\N	\N	\N	19425	1	1d84a010a02737c865fb64e1df8159ae9b35f324
44	jj.jpg	original_images/jj.jpg	341	307	2019-06-17 15:48:43.574355+02	\N	\N	\N	\N	\N	19274	1	87ec7c398ee9cb5f8098487a3743ae4b9e988503
45	logo-inea.jpg	original_images/logo-inea.jpg	400	142	2019-06-17 15:48:51.628489+02	\N	\N	\N	\N	\N	9380	1	220d922e14ee85c5f187b266251316fca170c497
46	mjn.jpg	original_images/mjn.jpg	291	250	2019-06-17 15:49:11.152885+02	\N	\N	\N	\N	\N	26030	1	6c90d3647e3be99b88c633ed305bbd9a938f4b96
47	mpit.jpg	original_images/mpit.jpg	349	239	2019-06-17 15:49:19.766857+02	\N	\N	\N	\N	\N	27749	1	27217b5ec84034917da7f7aa2157da5e58c7ce49
48	268682.jpg	original_images/268682.jpg	135	270	2019-06-17 15:54:33.220179+02	\N	\N	\N	\N	\N	1239	1	ad2bcf03b87d7cf8d90403cbebdb96c36ccf2f99
49	Zrzut ekranu 2019-06-17 o 15.55.02.png	original_images/Zrzut_ekranu_2019-06-17_o_15.55.02.png	182	290	2019-06-17 15:55:25.651805+02	\N	\N	\N	\N	\N	7648	1	b7416bc6b2b55229e03ea87de5550028cde0de4e
50	Zrzut ekranu 2019-06-17 o 15.56.30.png	original_images/Zrzut_ekranu_2019-06-17_o_15.56.30.png	68	298	2019-06-17 15:56:47.63936+02	\N	\N	\N	\N	\N	7034	1	e2caf1b455e8c3af5978eae7588afecc5425944e
51	nask.jpg	original_images/nask.jpg	414	77	2019-06-17 15:59:41.633239+02	\N	\N	\N	\N	\N	9307	1	fd3964f0fe0c618a7b477ceddac50f2c1ff3646b
52	4B9A3055.jpg	original_images/4B9A3055.jpg	1881	1254	2019-06-18 15:21:50.815418+02	\N	\N	\N	\N	\N	1182613	1	85195baeb84f210ed920d876627fec4dcd22cc0a
53	4668.jpg	original_images/4668.jpg	800	533	2019-06-18 15:26:59.539946+02	\N	\N	\N	\N	\N	50359	1	750e34002acecd3cc5e076c6a2ec7cd7439b63dd
54	27839783.jpg	original_images/27839783.jpg	1881	1254	2019-06-18 15:29:31.862303+02	\N	\N	\N	\N	\N	90375	1	e68b2be993088289816e858a53707e32951f03e1
55	7293397.jpg	original_images/7293397.jpg	1881	1254	2019-06-18 15:30:35.56177+02	\N	\N	\N	\N	\N	122846	1	9e2eb9136b30a05e4bbeb47dacd56c159a41494b
56	johnson-wang-515951-unsplash.jpg	original_images/johnson-wang-515951-unsplash.jpg	2449	1633	2019-06-19 11:51:27.464153+02	\N	\N	\N	\N	\N	1352346	1	9e3ac927f17d4b989a27cc8b489311900ba53408
57	johnson-wang-515951-unsplash.jpg	original_images/johnson-wang-515951-unsplash.jpg	2449	1633	2019-06-19 11:51:47.96129+02	\N	\N	\N	\N	\N	1352346	1	9e3ac927f17d4b989a27cc8b489311900ba53408
58	data2.jpg	original_images/data2.jpg	7360	4912	2019-06-19 13:53:56.720432+02	\N	\N	\N	\N	\N	4959909	1	00e71ebdb9e1a602826b39b5e2a4847ba0e3a8c9
59	optymalizacja.jpg	original_images/optymalizacja.jpg	5335	3557	2019-06-19 13:54:18.192279+02	\N	\N	\N	\N	\N	1146331	1	ff17ad3824b5e727b8f043c5a0a123e933d69e3a
60	cyfrowe2.jpg	original_images/cyfrowe2.jpg	3500	2333	2019-06-19 13:54:32.211383+02	\N	\N	\N	\N	\N	1517399	1	48f06aa629475cc0fae1da744d235f4311607cdc
61	optymalizacja3.jpg	original_images/optymalizacja3.jpg	6016	4016	2019-06-19 14:00:13.193205+02	\N	\N	\N	\N	\N	6038858	1	342ceb6fa206a3e5b1bddee4600a151086704588
62	cyfrowe.jpg	original_images/cyfrowe.jpg	4748	3165	2019-06-19 14:00:58.29964+02	\N	\N	\N	\N	\N	2955665	1	65233afbd8a3fd86111889241c77929cb602fce3
63	user-test.png	original_images/user-test.png	70	66	2019-06-19 14:07:56.197131+02	\N	\N	\N	\N	\N	1008	1	d30161543d30035b9743ffa2330932c683bff25f
64	warsztat.png	original_images/warsztat.png	73	73	2019-06-19 14:16:21.249227+02	\N	\N	\N	\N	\N	1970	1	f3ae80b4644244cb9fbc510e8d63cc8ed069ed1f
65	proto.png	original_images/proto.png	66	66	2019-06-19 14:16:39.301486+02	\N	\N	\N	\N	\N	1724	1	c5787444b1ceee9d9f803776ef9cddd9ea9a6aa4
66	user-test.png	original_images/user-test.png	70	66	2019-06-19 14:16:49.423264+02	\N	\N	\N	\N	\N	1008	1	d30161543d30035b9743ffa2330932c683bff25f
67	cyfrowe.png	original_images/cyfrowe.png	64	63	2019-06-19 14:19:22.821989+02	\N	\N	\N	\N	\N	1428	1	4aa1334913db43c5ddc29bbbffa356daecb6b580
68	uslugi.png	original_images/uslugi.png	79	65	2019-06-19 14:20:09.697855+02	\N	\N	\N	\N	\N	1576	1	9095971fdb71ec8901068564dae289f259726082
69	app-proto.png	original_images/app-proto.png	49	61	2019-06-19 14:21:10.692713+02	\N	\N	\N	\N	\N	1363	1	0e3decb85799bd5ffb0e8f67f2c724f066a3b55e
70	ux.jpg	original_images/ux.jpg	4000	2667	2019-06-19 15:28:25.707521+02	\N	\N	\N	\N	\N	773108	1	d9c3493b53bb577f0fad7d991e8de1938650c052
71	badania.jpg	original_images/badania.jpg	5472	3648	2019-06-19 15:30:31.899574+02	\N	\N	\N	\N	\N	8594153	1	d803c7bb6105ab3331ef31ca6e965f4ddcbaf518
72	warsztaty.jpg	original_images/warsztaty.jpg	5472	3648	2019-06-19 15:30:55.167125+02	\N	\N	\N	\N	\N	8981252	1	0cc423f8f1a726f9b016b747d426fea9f4f0d1c4
73	sprint.jpg	original_images/sprint.jpg	6000	4000	2019-06-19 15:32:22.647761+02	\N	\N	\N	\N	\N	10079203	1	2cccd7b3c0dc2af8e974af370f57adea726a2f91
74	warsztaty.png	original_images/warsztaty.png	64	64	2019-06-19 15:39:51.735417+02	\N	\N	\N	\N	\N	2283	1	8521afed4d34d404ebdcd413a3cf5c3974bcd6a4
75	coaching.png	original_images/coaching.png	64	64	2019-06-19 15:40:04.981381+02	\N	\N	\N	\N	\N	1962	1	6e56a6d1a8326c9cb3b13e99d9bee5f960e9be40
76	procesy.png	original_images/procesy.png	64	64	2019-06-19 15:40:14.058301+02	\N	\N	\N	\N	\N	2342	1	e675238bd519838c0b454a3b727aa554a96ef4a6
77	PrzygotowanieWprowadzenie.png	original_images/PrzygotowanieWprowadzenie.png	512	512	2019-06-21 11:48:41.326474+02	\N	\N	\N	\N	\N	10139	1	3136a925e1c40ea2f852d56842b5ec8f1a9b9b3b
78	zarzadzanieProcesem.png	original_images/zarzadzanieProcesem.png	512	512	2019-06-21 11:48:57.683435+02	\N	\N	\N	\N	\N	17058	1	bf0f848bca0ce049dc1f767fb0dce47858983ea3
79	aktywneWspieranie.png	original_images/aktywneWspieranie.png	512	512	2019-06-21 11:49:21.452881+02	\N	\N	\N	\N	\N	27507	1	f8086bd518c494a7f112fe13a5c98ec232e7f84d
80	opracowanieWarsztatow.png	original_images/opracowanieWarsztatow.png	512	512	2019-06-21 11:49:32.328543+02	\N	\N	\N	\N	\N	11175	1	dbb3d48b13d113c0362645722880248a382c0ee8
81	zebranieDanych.png	original_images/zebranieDanych.png	512	512	2019-06-21 11:51:39.378862+02	\N	\N	\N	\N	\N	2953	1	bffc1091905da5eac74a64f0bc02d31837af0a7b
82	analizaDanychH.png	original_images/analizaDanychH.png	512	512	2019-06-21 11:51:52.70909+02	\N	\N	\N	\N	\N	7621	1	d17108c38c6f2a07a1e37f27de68f36cde9df395
83	tworzenieAlgorytmu.png	original_images/tworzenieAlgorytmu.png	512	512	2019-06-21 11:52:02.726565+02	\N	\N	\N	\N	\N	13856	1	4cfbd639a57ce24059ef89a3fcb8bb67c2ddd27f
84	realizacjaProjektu.png	original_images/realizacjaProjektu.png	512	512	2019-06-21 11:52:16.16289+02	\N	\N	\N	\N	\N	18099	1	8df6eb2d87ea7d5ba6e99fb2bbc05c167700992b
85	inwentaryzacjaDanych.png	original_images/inwentaryzacjaDanych.png	512	512	2019-06-21 11:53:20.559828+02	\N	\N	\N	\N	\N	3637	1	d378a642bb12bf5fdbf57ebab4ef82bae284f4e0
86	dataScienc.png	original_images/dataScienc.png	512	512	2019-06-21 11:53:31.145362+02	\N	\N	\N	\N	\N	26025	1	9b8d3b1c8e20ca67ceb045a1d38d716effa9fd45
87	machineLearning.png	original_images/machineLearning.png	512	512	2019-06-21 11:53:41.962971+02	\N	\N	\N	\N	\N	38142	1	7759c333cb26816e145564439e002c25247c2b06
88	Analiza.png	original_images/Analiza.png	512	512	2019-06-21 15:31:27.233693+02	\N	\N	\N	\N	\N	25779	1	29a66e3673990e0af211cb7156eedccc2be0a44b
89	segmentacja.png	original_images/segmentacja.png	512	512	2019-06-21 15:31:38.490465+02	\N	\N	\N	\N	\N	34862	1	8c2a7dca8defa94a51d172c9f0f47e36e526e427
90	Predykcje.png	original_images/Predykcje.png	512	512	2019-06-21 15:31:47.701522+02	\N	\N	\N	\N	\N	7720	1	cc1db8fbb591519388042c667265e5a589afa755
91	Wykrywanie Anomalii.png	original_images/Wykrywanie_Anomalii.png	481	481	2019-06-21 15:31:59.001693+02	\N	\N	\N	\N	\N	11673	1	7a9c46157637114e455222675422d38b9aa3b535
92	Roadmapy.png	original_images/Roadmapy.png	480	456	2019-06-21 15:33:00.956114+02	\N	\N	\N	\N	\N	6575	1	4b67a009da03187e0017d4959b2a3ad1042ab523
93	Artefakty Scruma.png	original_images/Artefakty_Scruma.png	483	483	2019-06-21 15:33:09.524557+02	\N	\N	\N	\N	\N	19764	1	d3617648d23099de815cb5d328683ca0fdf5ea08
94	Wydarzenia scrumowe.png	original_images/Wydarzenia_scrumowe.png	481	489	2019-06-21 15:33:45.642463+02	\N	\N	\N	\N	\N	13547	1	115444666f094aac9376f9db44e5308f9164ef80
95	Scrum guide.png	original_images/Scrum_guide.png	481	481	2019-06-21 15:33:53.40569+02	\N	\N	\N	\N	\N	14358	1	91d6107b91fbe0f69514d673b6145fad13773c3a
96	ux.png	original_images/ux.png	512	512	2019-06-21 16:55:59.358296+02	\N	\N	\N	\N	\N	8366	1	b4c5b92b35dfcf29d88f910a3e4c0b2c9f6d2f7a
97	badania obserwacje.png	original_images/badania_obserwacje.png	476	512	2019-06-21 16:56:10.468477+02	\N	\N	\N	\N	\N	12008	1	ce80712f230c2c69a583a0e40f5d823b44085255
98	warsztaty wydobywcze.png	original_images/warsztaty_wydobywcze.png	480	480	2019-06-21 16:56:30.807349+02	\N	\N	\N	\N	\N	11799	1	d0d39d6f53941818d4d2a70cf0fdf50ea9d3dc99
99	design sprinty.png	original_images/design_sprinty.png	512	512	2019-06-21 16:56:40.541392+02	\N	\N	\N	\N	\N	9317	1	c759be5e4be4203d5ed5b7b3c740de1cdec3822f
100	20190210_185830.jpg	original_images/20190210_185830.jpg	4128	3096	2019-06-26 18:25:37.467114+02	\N	\N	\N	\N	\N	5177165	1	73e30e0ed9f146c65d2e909390c8b97f47e40f03
101	adult-analysis-business-1493375.jpg	original_images/adult-analysis-business-1493375.jpg	3965	3248	2019-06-26 18:26:22.938933+02	\N	\N	\N	\N	\N	1534405	1	e04292480164dc78edc62e97524c22db900b52a7
102	Firefox_Screenshot_2019-06-26T16-40-12.176Z.png	original_images/Firefox_Screenshot_2019-06-26T16-40-12.176Z.png	389	168	2019-06-26 18:40:49.493137+02	\N	\N	\N	\N	\N	756	1	520b39773bd4194f680c5ae0db0caf7db75ff70d
103	agora_logo.png	original_images/agora_logo.png	228	171	2019-07-03 18:12:31.058582+02	\N	\N	\N	\N	\N	3050	1	e883a9972906c22f7c51b8121db7b7a17ccad0a6
104	ministerstwo_logo.png	original_images/ministerstwo_logo.png	228	171	2019-07-03 18:12:46.217941+02	\N	\N	\N	\N	\N	5779	1	6b3a782a5e5094dfd1aa7d0fe04ed8cd9fd17d3a
105	biblioteka-narodowa_logo.png	original_images/biblioteka-narodowa_logo.png	228	171	2019-07-03 18:12:57.752759+02	\N	\N	\N	\N	\N	3619	1	4db7d13f5d1477952b8bba1e3ea0155fc43ce691
106	miasto-jest-nasze_logo.png	original_images/miasto-jest-nasze_logo.png	228	171	2019-07-03 18:13:08.147937+02	\N	\N	\N	\N	\N	5752	1	d413b7a037ee510e5ec79fe5ef501107a90a8cc2
107	inea_logo.png	original_images/inea_logo.png	228	171	2019-07-03 18:13:20.735497+02	\N	\N	\N	\N	\N	2416	1	7baf567639742187af258eb5aa46f8a49c9d9f39
108	J&J_logo.png	original_images/JJ_logo.png	228	171	2019-07-03 18:13:31.577342+02	\N	\N	\N	\N	\N	4398	1	da70dd32f0c29364ddabdd7c9d7a6e9fca958657
109	nask_logo.png	original_images/nask_logo.png	228	171	2019-07-03 18:13:43.034737+02	\N	\N	\N	\N	\N	2639	1	dbb9eea931213927396e9a7560b3ddd10c8c7a37
110	instytut-lacznosci_logo.png	original_images/instytut-lacznosci_logo.png	228	171	2019-07-03 18:13:53.080733+02	\N	\N	\N	\N	\N	4153	1	7a35d4d4e93aa1e2450ed1be1e5019f7ac168a5a
111	P1010639.jpg	original_images/P1010639.jpg	3000	2250	2019-07-03 20:30:10.402139+02	\N	\N	\N	\N	\N	636421	1	42769ee59ac60fad97d0bb0711a8aa2cc73cb33c
112	memo_2.png	original_images/memo_2.png	626	971	2019-07-04 10:37:53.666313+02	\N	\N	\N	\N	\N	257848	1	8fd2d7dd5a8b5c98c565b2a0576813f130d06f27
113	DARE magazine_2.png	original_images/DARE_magazine_2.png	648	971	2019-07-04 10:39:43.176053+02	\N	\N	\N	\N	\N	135664	1	8cf0008d5c2f4770b1531787aaf3481b7139605a
114	rodo pass_2.png	original_images/rodo_pass_2.png	648	971	2019-07-04 11:01:45.734164+02	\N	\N	\N	\N	\N	706608	1	1c0bb14ca50bee69a79e7d94f1a21f33f2dd5d20
115	ochrona srodowiska.png	original_images/ochrona_srodowiska_mobile.png	1344	971	2019-07-05 13:00:48.144298+02	\N	\N	\N	\N	\N	216732	1	0be56a9403dd50e35eabfc7a3872326739d0de1a
116	ochrona srodowiska.png	original_images/ochrona_srodowiska.png	1937	620	2019-07-05 13:01:09.971834+02	\N	\N	\N	\N	\N	1054681	1	d9a5a98a9dccaa6e736042d53c70e98398f972c1
117	seniorzy.png	original_images/seniorzy.png	1920	620	2019-07-08 10:26:27.909908+02	\N	\N	\N	\N	\N	514773	1	ee331dd8181e70e95ba1765c0bfadef2c78dfe52
118	seniorzy_mobile.png	original_images/seniorzy_mobile.png	1344	971	2019-07-08 10:26:44.548535+02	\N	\N	\N	\N	\N	320851	1	6e3a7cc7a0c47091d0da693679110da554e4064c
119	media.png	original_images/media.png	1920	620	2019-07-08 10:30:53.693127+02	\N	\N	\N	\N	\N	1691568	1	17e253f23e3e16366f57b2310172b6d885e95184
120	media_mobile.png	original_images/media_mobile.png	1344	971	2019-07-08 10:31:11.049735+02	\N	\N	\N	\N	\N	556278	1	81752e973e3ce3896f328290d7eb26a987e2c222
121	prawo.png	original_images/prawo.png	1920	620	2019-07-08 10:33:35.58033+02	\N	\N	\N	\N	\N	2320108	1	2491f8be6149d17c3b9f2de00662e6bab24345a3
122	prawo_mobile.png	original_images/prawo_mobile.png	1344	971	2019-07-08 10:33:46.368028+02	\N	\N	\N	\N	\N	147839	1	1c51c14ff383a0c3dc809b8bb19ed940ea87470c
123	piknik_laboratorium.ee_14.jpg	original_images/piknik_laboratorium.ee_14.jpg	3000	2250	2019-07-08 11:05:49.945235+02	976	1363	1928	1772	\N	6316609	1	7ce2f7eebd5556a19007afe6c9d1f80e170994cf
124	P1010057.jpg	original_images/P1010057.jpg	3000	1688	2019-07-09 14:20:35.897791+02	\N	\N	\N	\N	\N	3037000	1	baab8ec3fa3c139d80b6af33c51a80ac1cbfb91c
125	P1010057.png	original_images/P10100571.png	2800	1575	2019-07-09 15:27:37.206954+02	\N	\N	\N	\N	\N	10392918	1	0a30c4b68e0fb9a193b79e18727d1d013bde00cd
126	P1010057(3).png	original_images/P10100573.png	2800	1305	2019-07-09 15:34:58.553597+02	\N	\N	\N	\N	\N	8660778	1	f33da9559312b606c0e754c3e53459062e6b249c
127	P1010057(4).png	original_images/P10100574.png	3000	1398	2019-07-09 15:37:59.194683+02	\N	\N	\N	\N	\N	6386885	1	c512ba5336087af89e94c55619f1757e8efd0dec
128	P1010057(5).png	original_images/P10100575.png	2465	1398	2019-07-09 15:44:47.141451+02	\N	\N	\N	\N	\N	5100227	1	e0fea882f3ddc22ea68a7af6f04b078db8503ba2
129	P1010047.png	original_images/P1010047.png	2488	1327	2019-07-09 15:47:46.303711+02	\N	\N	\N	\N	\N	4331070	1	7f88b769d5020c122d97f0d39bd42eae75797ddb
130	kontrola_git.png	original_images/kontrola_git.png	1440	700	2019-07-09 16:05:44.466883+02	\N	\N	\N	\N	\N	1092194	1	cacfbb09efec5098560b447598238e93a19c10ca
131	cool-background(5).png	original_images/cool-background5.png	1192	580	2019-07-11 14:38:15.848133+02	\N	\N	\N	\N	\N	129102	1	bdb4e8192b57d228462b00888beff7e396483b55
132	kontrola_git(1).jpg	original_images/kontrola_git1.jpg	1440	700	2019-07-12 12:13:46.359385+02	\N	\N	\N	\N	\N	529052	1	18b9505d5d37c90751845b6ffcbe8059f7241ea9
133	www_oferta_scrum_warsztaty.jpg	original_images/www_oferta_scrum_warsztaty.jpg	960	800	2019-07-12 12:16:51.357813+02	\N	\N	\N	\N	\N	108621	1	592684008a9c78aa9408030bac7b4502b60230c6
134	innowacje w oparciu o dane_2.jpg	original_images/innowacje_w_oparciu_o_dane_2.jpg	648	970	2019-07-12 12:30:45.071856+02	\N	\N	\N	\N	\N	591185	1	2feb9ad76b7af4ede9346ea3ee99ce55775b7fbd
135	cyfrowe2(1).jpg	original_images/cyfrowe21.jpg	3500	2333	2019-07-12 12:42:47.499047+02	\N	\N	\N	\N	\N	2445189	1	493547aad1e4d262f4621bb2004295a12bb5a9ca
136	ochrona srodowiska.jpg	original_images/ochrona_srodowiska.jpg	1937	620	2019-07-12 12:49:29.891845+02	\N	\N	\N	\N	\N	728296	1	fee95d79bf9553a08c0210d62627f91411a37e49
137	ochrona srodowiska_mobile.jpg	original_images/ochrona_srodowiska_mobile.jpg	1344	971	2019-07-12 12:50:11.122792+02	\N	\N	\N	\N	\N	219143	1	7a6108a1987e87c21a874ec6a9127014d7fbeb13
138	seniorzy.jpg	original_images/seniorzy.jpg	1920	620	2019-07-12 12:54:06.56654+02	\N	\N	\N	\N	\N	336580	1	ea6d2d19fbf68674f63e93f1f7f7e93086dca8af
139	media.jpg	original_images/media.jpg	1920	620	2019-07-12 12:56:32.970881+02	\N	\N	\N	\N	\N	1092198	1	5e67887ba598d715f79def92f1bf0ad95f578f40
140	prawo.jpg	original_images/prawo.jpg	1920	620	2019-07-12 12:57:34.388899+02	\N	\N	\N	\N	\N	1428576	1	1aec2d8c06b41f07ef3f350b576826bdd0a9c286
141	memo_2.jpg	original_images/memo_2.jpg	626	971	2019-07-12 13:02:04.230841+02	\N	\N	\N	\N	\N	234132	1	a621b1cdab6eb34e375fffd8157ece8042f747cd
142	DARE magazine_2.jpg	original_images/DARE_magazine_2.jpg	648	971	2019-07-12 13:05:17.174232+02	\N	\N	\N	\N	\N	192833	1	b6375a798d14219197e176b79145828e675d781e
143	rodo pass_2.jpg	original_images/rodo_pass_2.jpg	648	971	2019-07-12 13:12:44.690998+02	\N	\N	\N	\N	\N	575706	1	62eb148068638bb16ab7d5de9bf9905f053879de
144	cool-background(1).jpg	original_images/cool-background1.jpg	500	243	2019-07-12 16:06:02.180747+02	\N	\N	\N	\N	\N	73563	1	882bdd5bb4253932fb3b044041691c329b7cd349
145	cool-background(3).jpg	original_images/cool-background3.jpg	500	243	2019-07-12 16:07:57.931692+02	\N	\N	\N	\N	\N	70445	1	79e6c9b00a5f5489b2763c61aafd1a6ed14ce008
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
838	images/innowacje_w_oparciu_o_dane_2.width-256_6cTSR5T.jpg	256	383		width-256	134
839	images/innowacje_w_oparciu_o_dane_2.width-512_Md847dx.jpg	512	766		width-512	134
840	images/innowacje_w_oparciu_o_dane_2.width-648_nNQxQUW.jpg	648	970		width-648	134
841	images/cyfrowe21.width-256_HGkAXkq.jpg	256	170		width-256	135
842	images/cyfrowe21.width-512_YEuhkA2.jpg	512	341		width-512	135
843	images/cyfrowe21.width-1024_tw0vjfs.jpg	1024	682		width-1024	135
844	images/cyfrowe21.width-2048_jg61ghY.jpg	2048	1365		width-2048	135
845	images/cyfrowe21.width-3500_Eo9npHM.jpg	3500	2333		width-3500	135
846	images/optymalizacja3.width-256_Pv7BAYs.jpg	256	170		width-256	61
847	images/optymalizacja3.width-512_whrgQeu.jpg	512	341		width-512	61
848	images/optymalizacja3.width-1024_v81AWm3.jpg	1024	683		width-1024	61
849	images/optymalizacja3.width-2048_ZQ73OZA.jpg	2048	1367		width-2048	61
850	images/optymalizacja3.width-4096_ar90hCa.jpg	4096	2734		width-4096	61
851	images/optymalizacja3.width-6016_3m89rye.jpg	6016	4016		width-6016	61
852	images/7293397.width-256_NVDDaiN.jpg	256	170		width-256	55
853	images/7293397.width-512_wOSrcc3.jpg	512	341		width-512	55
854	images/7293397.width-1024_Y6jJrIU.jpg	1024	682		width-1024	55
855	images/7293397.width-1881_yY9nEpq.jpg	1881	1254		width-1881	55
856	images/www_oferta_scrum_warsztaty.width-256_wgcXVpq.jpg	256	213		width-256	133
857	images/www_oferta_scrum_warsztaty.width-512_J6Ern7S.jpg	512	426		width-512	133
858	images/www_oferta_scrum_warsztaty.width-960_nRVx73C.jpg	960	800		width-960	133
859	images/ochrona_srodowiska.width-256_6kRm6xc.jpg	256	81		width-256	136
860	images/ochrona_srodowiska.width-512_atr6knC.jpg	512	163		width-512	136
861	images/ochrona_srodowiska.width-1024_nDnQV4r.jpg	1024	327		width-1024	136
862	images/ochrona_srodowiska.width-1937_G52TCSP.jpg	1937	620		width-1937	136
863	images/seniorzy.width-256_1BIGEzX.jpg	256	82		width-256	138
864	images/seniorzy.width-512_HXQ20ZR.jpg	512	165		width-512	138
865	images/seniorzy.width-1024_F9DMpZ0.jpg	1024	330		width-1024	138
866	images/seniorzy.width-1920_Hf5MdH0.jpg	1920	620		width-1920	138
867	images/media.width-256_VKg86tM.jpg	256	82		width-256	139
868	images/media.width-512_ybLzX8q.jpg	512	165		width-512	139
869	images/media.width-1024_EqtYcWd.jpg	1024	330		width-1024	139
870	images/media.width-1920_olCzEIg.jpg	1920	620		width-1920	139
871	images/prawo.width-256_nrEsbza.jpg	256	82		width-256	140
872	images/prawo.width-512_gi9VsKp.jpg	512	165		width-512	140
873	images/prawo.width-1024_wqMWe9M.jpg	1024	330		width-1024	140
874	images/prawo.width-1920_lwYBw7B.jpg	1920	620		width-1920	140
875	images/ochrona_srodowiska_mobile.width-256_pRjbD6M.png	256	184		width-256	115
876	images/ochrona_srodowiska_mobile.width-512_tMOWK0U.png	512	369		width-512	115
877	images/ochrona_srodowiska_mobile.width-1024_2RyaaQz.png	1024	739		width-1024	115
878	images/ochrona_srodowiska_mobile.width-1344_JqNcK3Q.png	1344	971		width-1344	115
879	images/seniorzy_mobile.width-256_N1spcNJ.png	256	184		width-256	118
880	images/seniorzy_mobile.width-512_n1UPy4A.png	512	369		width-512	118
881	images/seniorzy_mobile.width-1024_Ge7Ap8I.png	1024	739		width-1024	118
882	images/seniorzy_mobile.width-1344_lNRKXkk.png	1344	971		width-1344	118
883	images/media_mobile.width-256_Xn0dyJb.png	256	184		width-256	120
884	images/media_mobile.width-512_3YVBHY1.png	512	369		width-512	120
885	images/media_mobile.width-1024_b1FQx1x.png	1024	739		width-1024	120
886	images/media_mobile.width-1344_FJe4SK0.png	1344	971		width-1344	120
887	images/prawo_mobile.width-256_WI1AOIA.png	256	184		width-256	122
888	images/prawo_mobile.width-512_b4H1KOJ.png	512	369		width-512	122
889	images/prawo_mobile.width-1024_ofqlLf6.png	1024	739		width-1024	122
890	images/prawo_mobile.width-1344_jECnsm6.png	1344	971		width-1344	122
891	images/kontrola_git1.width-256_LqaN8KB.jpg	256	124		width-256	132
892	images/kontrola_git1.width-512_4dKxTMd.jpg	512	248		width-512	132
893	images/kontrola_git1.width-1024_0bN0G98.jpg	1024	497		width-1024	132
894	images/kontrola_git1.width-1440_3MQyTIH.jpg	1440	700		width-1440	132
895	images/kontrola_git1.max-165x165_uifI2IO.jpg	165	80		max-165x165	132
896	images/agora.max-165x165_rDfADaQ.jpg	165	31		max-165x165	41
897	images/mpit.max-165x165_nA73z53.jpg	165	112		max-165x165	47
898	images/bn.max-165x165_8FdVwZZ.jpg	165	51		max-165x165	42
899	images/mjn.max-165x165_m48eQRo.jpg	165	141		max-165x165	46
900	images/logo-inea.max-165x165_y7NfZbP.jpg	165	58		max-165x165	45
901	images/jj.max-165x165_rquLCSb.jpg	165	148		max-165x165	44
902	images/nask.max-165x165_0r5bLPg.jpg	165	30		max-165x165	51
903	images/il.max-165x165_qppIyB1.jpg	165	52		max-165x165	43
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
1	/en	t		3	\N
\.


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 14, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 198, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 39, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 38, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: constance_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.constance_config_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 50, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 188, true);


--
-- Name: main_contactform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_contactform_id_seq', 1, true);


--
-- Name: main_cooperatorlogo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_cooperatorlogo_id_seq', 12, true);


--
-- Name: main_footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_footer_id_seq', 2, true);


--
-- Name: main_subpagemetric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_subpagemetric_id_seq', 1, false);


--
-- Name: projects_projectmetric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_projectmetric_id_seq', 8, true);


--
-- Name: projects_teammemberspecializationtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_teammemberspecializationtag_id_seq', 12, true);


--
-- Name: projects_topicpage_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_topicpage_projects_id_seq', 5, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 9, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 6, true);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 40, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 318, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, true);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 1, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, true);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 145, true);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 903, true);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, true);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: constance_config constance_config_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config
    ADD CONSTRAINT constance_config_key_key UNIQUE (key);


--
-- Name: constance_config constance_config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config
    ADD CONSTRAINT constance_config_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: main_contactform main_contactform_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform
    ADD CONSTRAINT main_contactform_pkey PRIMARY KEY (id);


--
-- Name: main_contactform main_contactform_site_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform
    ADD CONSTRAINT main_contactform_site_id_key UNIQUE (site_id);


--
-- Name: main_cooperatorlogo main_cooperatorlogo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_pkey PRIMARY KEY (id);


--
-- Name: main_footer main_footer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_pkey PRIMARY KEY (id);


--
-- Name: main_footer main_footer_site_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_site_id_key UNIQUE (site_id);


--
-- Name: main_oldhomepage main_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_oldhomepage
    ADD CONSTRAINT main_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_homepage main_homepage_pkey1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_homepage
    ADD CONSTRAINT main_homepage_pkey1 PRIMARY KEY (page_ptr_id);


--
-- Name: main_infopage main_infopage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_infopage
    ADD CONSTRAINT main_infopage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_jobofferindexpage main_jobofferindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferindexpage
    ADD CONSTRAINT main_jobofferindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_jobofferpage main_jobofferpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferpage
    ADD CONSTRAINT main_jobofferpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_newsindexpage main_newsindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newsindexpage
    ADD CONSTRAINT main_newsindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_newspage main_newspage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_subpage main_subpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpage
    ADD CONSTRAINT main_subpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_subpagemetric main_subpagemetric_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric
    ADD CONSTRAINT main_subpagemetric_pkey PRIMARY KEY (id);


--
-- Name: projects_projectmetric projects_projectmetric_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric
    ADD CONSTRAINT projects_projectmetric_pkey PRIMARY KEY (id);


--
-- Name: projects_projectpage projects_projectpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_specializationindexpage projects_specializationindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationindexpage
    ADD CONSTRAINT projects_specializationindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_specializationpage projects_specializationpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationpage
    ADD CONSTRAINT projects_specializationpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_teamindexpage projects_teamindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teamindexpage
    ADD CONSTRAINT projects_teamindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_teammember projects_teammember_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammember
    ADD CONSTRAINT projects_teammember_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_teammemberspecializationtag projects_teammemberspecializationtag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag
    ADD CONSTRAINT projects_teammemberspecializationtag_pkey PRIMARY KEY (id);


--
-- Name: projects_topicpage projects_topicpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_topicpage_projects projects_topicpage_proje_topicpage_id_projectpage_2b5e6777_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_proje_topicpage_id_projectpage_2b5e6777_uniq UNIQUE (topicpage_id, projectpage_id);


--
-- Name: projects_topicpage_projects projects_topicpage_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_projects_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: constance_config_key_baef3136_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX constance_config_key_baef3136_like ON public.constance_config USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: main_cooperatorlogo_image_id_16147108; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_cooperatorlogo_image_id_16147108 ON public.main_cooperatorlogo USING btree (image_id);


--
-- Name: main_cooperatorlogo_page_id_ea52fbe3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_cooperatorlogo_page_id_ea52fbe3 ON public.main_cooperatorlogo USING btree (page_id);


--
-- Name: main_homepage_join_us_background_id_7a97f261; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_homepage_join_us_background_id_7a97f261 ON public.main_oldhomepage USING btree (join_us_background_id);


--
-- Name: main_jobofferpage_icon_id_2c47f752; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_jobofferpage_icon_id_2c47f752 ON public.main_jobofferpage USING btree (icon_id);


--
-- Name: main_newspage_photo_id_ff5a2d19; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_newspage_photo_id_ff5a2d19 ON public.main_newspage USING btree (photo_id);


--
-- Name: main_newspage_specialization_id_6d607455; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_newspage_specialization_id_6d607455 ON public.main_newspage USING btree (specialization_id);


--
-- Name: main_subpage_header_background_image_id_dddd1f16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_subpage_header_background_image_id_dddd1f16 ON public.main_subpage USING btree (header_background_image_id);


--
-- Name: main_subpagemetric_icon_id_e745bce1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_subpagemetric_icon_id_e745bce1 ON public.main_subpagemetric USING btree (icon_id);


--
-- Name: main_subpagemetric_page_id_fae0c127; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_subpagemetric_page_id_fae0c127 ON public.main_subpagemetric USING btree (page_id);


--
-- Name: projects_projectmetric_project_id_b982bf7a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectmetric_project_id_b982bf7a ON public.projects_projectmetric USING btree (project_id);


--
-- Name: projects_projectpage_background_image_id_0dfc95d3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_background_image_id_0dfc95d3 ON public.projects_projectpage USING btree (background_image_id);


--
-- Name: projects_projectpage_icon_id_1145692d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_icon_id_1145692d ON public.projects_projectpage USING btree (icon_id);


--
-- Name: projects_projectpage_image_id_d50212f0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_image_id_d50212f0 ON public.projects_projectpage USING btree (image_id);


--
-- Name: projects_specializationpage_background_image_id_87b958ff; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_specializationpage_background_image_id_87b958ff ON public.projects_specializationpage USING btree (background_image_id);


--
-- Name: projects_teammember_photo_id_10ff7e07; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_teammember_photo_id_10ff7e07 ON public.projects_teammember USING btree (photo_id);


--
-- Name: projects_teammemberspecializationtag_content_object_id_023d4610; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_teammemberspecializationtag_content_object_id_023d4610 ON public.projects_teammemberspecializationtag USING btree (content_object_id);


--
-- Name: projects_teammemberspecializationtag_tag_id_73959981; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_teammemberspecializationtag_tag_id_73959981 ON public.projects_teammemberspecializationtag USING btree (tag_id);


--
-- Name: projects_topicpage_background_image_id_c6783694; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_background_image_id_c6783694 ON public.projects_topicpage USING btree (background_image_id);


--
-- Name: projects_topicpage_phone_image_id_e78545c7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_phone_image_id_e78545c7 ON public.projects_topicpage USING btree (phone_image_id);


--
-- Name: projects_topicpage_projects_projectpage_id_16edc0fe; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_projects_projectpage_id_16edc0fe ON public.projects_topicpage_projects USING btree (projectpage_id);


--
-- Name: projects_topicpage_projects_topicpage_id_fc1de001; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_projects_topicpage_id_fc1de001 ON public.projects_topicpage_projects USING btree (topicpage_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_contactform main_contactform_site_id_004d3ccf_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform
    ADD CONSTRAINT main_contactform_site_id_004d3ccf_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_cooperatorlogo main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_cooperatorlogo main_cooperatorlogo_page_id_ea52fbe3_fk_main_oldh; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_page_id_ea52fbe3_fk_main_oldh FOREIGN KEY (page_id) REFERENCES public.main_oldhomepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_footer main_footer_site_id_e3025847_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_site_id_e3025847_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_oldhomepage main_homepage_join_us_background_i_7a97f261_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_oldhomepage
    ADD CONSTRAINT main_homepage_join_us_background_i_7a97f261_fk_wagtailim FOREIGN KEY (join_us_background_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_oldhomepage main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_oldhomepage
    ADD CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_homepage main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_homepage
    ADD CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_infopage main_infopage_page_ptr_id_b85bdde1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_infopage
    ADD CONSTRAINT main_infopage_page_ptr_id_b85bdde1_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_jobofferindexpage main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferindexpage
    ADD CONSTRAINT main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_jobofferpage main_jobofferpage_icon_id_2c47f752_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferpage
    ADD CONSTRAINT main_jobofferpage_icon_id_2c47f752_fk_wagtailimages_image_id FOREIGN KEY (icon_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_jobofferpage main_jobofferpage_page_ptr_id_fff97024_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferpage
    ADD CONSTRAINT main_jobofferpage_page_ptr_id_fff97024_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_newsindexpage main_newsindexpage_page_ptr_id_addbf522_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newsindexpage
    ADD CONSTRAINT main_newsindexpage_page_ptr_id_addbf522_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_newspage main_newspage_page_ptr_id_b58fa7b7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_page_ptr_id_b58fa7b7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_newspage main_newspage_photo_id_ff5a2d19_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_photo_id_ff5a2d19_fk_wagtailimages_image_id FOREIGN KEY (photo_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_newspage main_newspage_specialization_id_6d607455_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_specialization_id_6d607455_fk_projects_ FOREIGN KEY (specialization_id) REFERENCES public.projects_specializationpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpage main_subpage_header_background_im_dddd1f16_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpage
    ADD CONSTRAINT main_subpage_header_background_im_dddd1f16_fk_wagtailim FOREIGN KEY (header_background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpage main_subpage_page_ptr_id_b97f8f24_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpage
    ADD CONSTRAINT main_subpage_page_ptr_id_b97f8f24_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpagemetric main_subpagemetric_icon_id_e745bce1_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric
    ADD CONSTRAINT main_subpagemetric_icon_id_e745bce1_fk_wagtailimages_image_id FOREIGN KEY (icon_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpagemetric main_subpagemetric_page_id_fae0c127_fk_main_subpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric
    ADD CONSTRAINT main_subpagemetric_page_id_fae0c127_fk_main_subpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES public.main_subpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectmetric projects_projectmetr_project_id_b982bf7a_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric
    ADD CONSTRAINT projects_projectmetr_project_id_b982bf7a_fk_projects_ FOREIGN KEY (project_id) REFERENCES public.projects_projectpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_background_image_id_0dfc95d3_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_background_image_id_0dfc95d3_fk_wagtailim FOREIGN KEY (background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_icon_id_1145692d_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_icon_id_1145692d_fk_wagtailimages_image_id FOREIGN KEY (icon_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_image_id_d50212f0_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_image_id_d50212f0_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_page_ptr_id_2eccd927_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_page_ptr_id_2eccd927_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_specializationpage projects_specializat_background_image_id_87b958ff_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationpage
    ADD CONSTRAINT projects_specializat_background_image_id_87b958ff_fk_wagtailim FOREIGN KEY (background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_specializationindexpage projects_specializat_page_ptr_id_a20c5746_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationindexpage
    ADD CONSTRAINT projects_specializat_page_ptr_id_a20c5746_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_specializationpage projects_specializat_page_ptr_id_fa24395a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationpage
    ADD CONSTRAINT projects_specializat_page_ptr_id_fa24395a_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teamindexpage projects_teamindexpa_page_ptr_id_3e244fbd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teamindexpage
    ADD CONSTRAINT projects_teamindexpa_page_ptr_id_3e244fbd_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammember projects_teammember_page_ptr_id_23b42f86_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammember
    ADD CONSTRAINT projects_teammember_page_ptr_id_23b42f86_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammember projects_teammember_photo_id_10ff7e07_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammember
    ADD CONSTRAINT projects_teammember_photo_id_10ff7e07_fk_wagtailimages_image_id FOREIGN KEY (photo_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammemberspecializationtag projects_teammembers_content_object_id_023d4610_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag
    ADD CONSTRAINT projects_teammembers_content_object_id_023d4610_fk_projects_ FOREIGN KEY (content_object_id) REFERENCES public.projects_teammember(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammemberspecializationtag projects_teammembers_tag_id_73959981_fk_taggit_ta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag
    ADD CONSTRAINT projects_teammembers_tag_id_73959981_fk_taggit_ta FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage projects_topicpage_background_image_id_c6783694_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_background_image_id_c6783694_fk_wagtailim FOREIGN KEY (background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage_projects projects_topicpage_p_projectpage_id_16edc0fe_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_p_projectpage_id_16edc0fe_fk_projects_ FOREIGN KEY (projectpage_id) REFERENCES public.projects_projectpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage_projects projects_topicpage_p_topicpage_id_fc1de001_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_p_topicpage_id_fc1de001_fk_projects_ FOREIGN KEY (topicpage_id) REFERENCES public.projects_topicpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage projects_topicpage_page_ptr_id_c3c2d719_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_page_ptr_id_c3c2d719_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage projects_topicpage_phone_image_id_e78545c7_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_phone_image_id_e78545c7_fk_wagtailim FOREIGN KEY (phone_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

