#!/bin/sh -e
cd kamailio

INCLUDE_MODULES="acc \
auth \
auth_openbts \
ctl \
db_text \
dispatcher \
htable \
ipops \
kazoo \
kex \
maxfwd \
nathelper \
outbound \
path \
permissions \
pike \
presence \
presence_dialoginfo \
presence_mwi \
presence_xml \
pua \
pua_bla \
pua_mi \
pua_reginfo \
pua_usrloc \
pua_xmpp \
pv \
registrar \
rr \
sanity \
siputils \
sl \
sqlops \
stun \
textops \
textopsx \
timer \
tls \
tm \
tmx \
tsilo \
uac \
uac_redirect \
usrloc \
uuid \
websocket \
xhttp \
xlog"

EXCLUDE_MODULES="alias_db \
async \
auth_db \
auth_diameter \
auth_openbts \
auth_xkeys \
avp \
avpops \
benchmark \
blst \
call_control \
cfg_db \
cfg_rpc \
cfgt \
cfgutils \
corex \
counters \
db2_ops \
db_cluster \
db_flatstore \
debugger \
dialog \
diversion \
dmq \
dmq_usrloc \
domain \
domainpolicy \
drouting \
enum \
exec \
group \
imc \
jsonrpcs \
log_custom \
malloc_test \
mangler \
matrix \
mediaproxy \
mohqueue \
mqueue \
msilo \
msrp \
mtree \
nat_traversal \
nosip \
pdb \
pdt \
pipelimit \
prefix_route \
print \
print_lib \
pua_mi \
p_usrloc \
qos \
ratelimit \
rtimer \
rtjson \
rtpengine \
rtpproxy \
sca \
sdpops \
seas \
sipcapture \
sipt \
siptrace \
sms \
smsops \
speeddial \
ss7ops \
sst \
statistics \
statsc \
statsd \
tcpops \
tmrec \
topoh \
topos \
uid_auth_db \
uid_avp_db \
uid_domain \
uid_gflags \
uid_uri_db \
uri_db \
userblacklist \
xhttp_rpc \
xprint"

make FLAVOUR=kamailio cfg \
	prefix=/usr/local/kamailio \
	skip_modules="${EXCLUDE_MODULES}" \
	include_modules="${INCLUDE_MODULES}" \
	SCTP=0 \
	STUN=1 \
	TLS_HOOKS=1
