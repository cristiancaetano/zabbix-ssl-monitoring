VDATA=`echo | openssl s_client -connect domain.name:443 2>/dev/null | openssl x509 -noout -dates | tail -1 | tr -s " " | cut -d "=" -f2 | cut -d " " -f1,2,4`

CONVERTE=$(date -d "$VDATA" +%Y-%m-%d)

DATEATUAL=`date +%Y-%m-%d`

echo "scale=0;("`date -d "$CONVERTE" +%s`-`date -d "$DATEATUAL" +%s`")"/24/60/60|bc
