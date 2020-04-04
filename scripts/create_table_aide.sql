CREATE TABLE aide
(
	id_aide SERIAL PRIMARY KEY NOT NULL,
    code_application CHARACTER VARYING,
    numero_sequentiel CHARACTER VARYING,
    mois CHARACTER VARYING,
    siren CHARACTER VARYING,
    nom1 CHARACTER VARYING,
    nom2 CHARACTER VARYING,
    effectif DECIMAL(9,2),
    montant DECIMAL(9,2),
    devise CHARACTER VARYING,
    date_dp date default NULL,
    date_paiement date default NULL,
    siret CHARACTER VARYING,
    reg DECIMAL(9,2),
    dep CHARACTER VARYING,
    codecommuneetablissementstring CHARACTER VARYING,
    count_siren_nb DECIMAL(9,2),
    montant_modifie DECIMAL(9,2)
)
TABLESPACE pg_default;