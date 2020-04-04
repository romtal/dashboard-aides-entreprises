
sudo -u postgres psql -c "DROP TABLE IF EXISTS aide;"
echo "DROP TABLE OK"
sudo -u postgres psql -d sirene -f "create_table_aide.sql"
echo "CREATE TABLES OK"

datafolder="$(dirname "$(pwd)")"/data/simu-aides/

sudo -u postgres psql -d sirene -c "\copy aide(code_application, numero_sequentiel, mois, siren, nom1, nom2, effectif, montant, devise, date_dp, date_paiement, siret, reg, dep, codecommuneetablissementstring, count_siren_nb, montant_modifie) FROM '"$datafolder"aides.csv' delimiter ',' csv header encoding 'UTF8';"

echo "Creating index on siren column"
sudo -u postgres psql -d sirene -c "CREATE INDEX aide_siren ON aide (siren);"
echo "Creating index on siret column"
sudo -u postgres psql -d sirene -c "CREATE INDEX aide_siret ON aide (siret);"
echo "Creating index on reg column"
sudo -u postgres psql -d sirene -c "CREATE INDEX aide_reg ON aide (reg);"
echo "Creating index on dep column"
sudo -u postgres psql -d sirene -c "CREATE INDEX aide_dep ON aide (dep);"
echo "Creating index on codecommuneetablissementstring column"
sudo -u postgres psql -d sirene -c "CREATE INDEX aide_codecommuneetablissementstring ON aide (codecommuneetablissementstring);"
echo "index created"


    