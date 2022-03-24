-- password is: Test1234!
INSERT INTO auth_user ("id", "password", "is_superuser", "is_staff", "username", "email", "is_active", "first_name", "last_name", "date_joined") VALUES
    (2,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer1','hans.mueller@example.org',true,'','',date('now')),
    (3,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer2','werner@example.org',true,'','',date('now')),
    (4,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer3','bernd.s@example.org',true,'','',date('now')),
    (5,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer4','gunter.meier@example.org',true,'','',date('now'));
INSERT INTO saas_product ("id", "slug", "name", "prefix",
    "activation_url", "deactivation_url", "instance_url",
    "instance_password_reset_url", "instance_admin_user",
    "is_active", "number_of_ports") VALUES
	(1, 'kanboard', 'Kanboard', 'kb',
    'https://saas.#Prefix#Identifier.example.org/saas_activate.php?SaasActivationPassword=#SaasActivationPassword&PasswordResetToken=#PasswordResetToken',
    'https://saas.#Prefix#Identifier.example.org/saas_deactivate.php?SaasActivationPassword=#SaasActivationPassword',
    'https://#Prefix#Identifier.example.org/',
    'https://#Prefix#Identifier.example.org/?controller=PasswordResetController&action=change&token=#PasswordResetToken',
    'admin',
    true, 0);
INSERT INTO saas_plan ("id","product_id","period_length_in_months","currency_code","cost_per_period","notice_period_in_days",
    "slug",
    "is_favourite",
    "name","name_en","name_de",
    "descr_target","descr_target_en","descr_target_de",
    "descr_caption","descr_caption_en","descr_caption_de",
    "descr_1","descr_1_en","descr_1_de",
    "descr_2","descr_2_en","descr_2_de",
    "descr_3","descr_3_en","descr_3_de",
    "descr_4","descr_4_en","descr_4_de") VALUES
    (1,1,0,'EUR',0,0,'test',false,
        '','Test','Test',
        '','For curious people','Für Neugierige',
        '','Just experimenting','Nur zum Ausprobieren',
        '','No Backups','Keine Backups',
        '','Support in the public forum','Support im öffentlichen Forum',
        '','Work with your own data in your own instance','Mit den eigenen Daten in der eigenen Instanz arbeiten',
        '','Access via automatic url','Zugriff über automatisch vergebene URL'),
    (2,1,12,'EUR',50,14,'basic',false,
        '','Basic','Basic',
        '','For everyone','Für jeden',
        '','Everything you need','Alles was man so braucht',
        '','Nightly Backups','Nächtliche Backups',
        '','Support in the public forum','Support im öffentlichen Forum',
        '','Regular Updates to latest release','Immer wieder Aktualisierungen auf die aktuelle Version',
        '','Access via automatic url','Zugriff über automatisch vergebene URL'),
    (3,1,1,'EUR',5,7,'mini',true,
        '','Mini','Mini',
        '','For starters','Für Anfänger',
        '','To get used to it','Zum Eingewöhnen',
        '','Nightly Backups','Nächtliche Backups',
        '','Support in the public forum','Support im öffentlichen Forum',
        '','Regular Updates to latest release','Immer wieder Aktualisierungen auf die aktuelle Version',
        '','Access via automatic url','Zugriff über automatisch vergebene URL'),
    (4,1,12,'EUR',300,14,'pro',false,
        '','Pro','Pro',
        '','For Professionals','Für Profis',
        '','With all bells and whistles','Mit allem Schnickschnack',
        '','Hourly Backups','Stündliche Backups',
        '','Support with Ticketing system, 3 hours incl.','Support über Ticket-System, mit 3 Std. inkl.',
        '','Updates coordinated with you','Aktualisierungen mit Ihnen abgesprochen',
        '','Access via your own url','Zugriff über eigene URL');
INSERT INTO saas_customer ("id","user_id","is_newsletter_subscribed","newsletter_subscribed_on","newsletter_cancelled","language_code","organisation_name","title","first_name","last_name","street","post_code","city","country_code","email_address","is_active") VALUES
	(1,2,true,'2021-01-01',NULL,'DE','Kaninchenzüchter Plauen e.V.','Mr','Hans','Müller','Holzweg 3','01234','Plauen','DE','hans.mueller@example.org',true),
	(2,3,true,'2021-05-01',NULL,'DE','Gartensparte zum Spaten','Mr','Werner','Schmidt','Am Wasser 7','01234','Plauen','DE','werner@example.org',true),
	(3,4,true,'2021-05-01',NULL,'DE','Gartensparte Schneckenhain','Mr','Bernd','Schmitz','Am Berg 2','01234','Plauen','DE','bernd.s@example.org',true),
	(4,5,true,'2021-05-01',NULL,'DE','Sportverein Trimm Dich','Mr','Gunter','Meier','An der Elster 22','01234','Plauen','DE','gunter.meier@example.org',true);
INSERT INTO saas_instance ("id","product_id","identifier","hostname","pacuser","channel","status","last_interaction","reserved_token","reserved_until","reserved_for_user_id","initial_password","db_password","first_port","last_port") VALUES
	(1,1,'344567','host0001','xyz00','stable','ASSIGNED',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(2,1,'238978','host0001','xyz00','stable','ASSIGNED',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(3,1,'785275','host0001','xyz00','stable','ASSIGNED',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(4,1,'862344','host0001','xyz00','stable','AVAILABLE',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(5,1,'119287','host0002','xyz01','stable','ASSIGNED',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(6,1,'239399','host0002','xyz01','stable','AVAILABLE',NULL,NULL,NULL,NULL,'','topsecret',-1,-1);
INSERT INTO saas_contract ("id","start_date","end_date","latest_cancel_date","is_auto_renew","is_confirmed","customer_id","instance_id","plan_id","payment_method") VALUES
	(1,'2021-06-05','2021-07-31','2021-07-14',true,true,1,1,2,'SEPA_TRANSFER'),
	(2,'2021-06-01','2021-07-31','2021-07-14',true,true,2,2,3,'SEPA_TRANSFER'),
	(3,'2021-06-01','2021-07-31','2021-07-14',true,true,3,3,3,'SEPA_TRANSFER'),
	(4,'2021-06-01','2021-07-31','2021-07-14',true,true,4,5,3,'SEPA_TRANSFER');
