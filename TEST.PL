#!/usr/local/bin/perl -w

BEGIN{ use Cwd;
    unshift (@INC, './','../');
}

use Db::DFC;
$JPL::DEBUG=1;

$DOCBASE="media_X";

$dfclient = DfClient->new();
output ("dfclient = " . $dfclient);
output ("DFC version = " . $dfclient->getDFCVersion());
$client = $dfclient->getLocalClient();
output ("client = " . $client);

$logininfo = DfLoginInfo->new();
output ("logininfo = " . $logininfo);

$logininfo->setUser("dmadmin");
output ("user = " . $logininfo->getUser());

$logininfo->setPassword('dmadmin4i');
output ("password = " . $logininfo->getPassword());

$logininfo->setDomain('HERNDON-EMPIRE');
output ("domain = " . $logininfo->getDomain());

$login2 = DfLoginInfo->new($logininfo);
output ("user from login2 = " . $login2->getUser());

$session = $client->newSession($DOCBASE,$logininfo);
if (JNI::ExceptionOccurred()) {
    output (JNI::ExceptionDescribe());
    JNI::ExceptionClear();
}
output ("session = " . $session);
output ("RDBMS = " . $session->getDBMSName());

## create a document
$doc = $session->newObject("dm_document");
output ("doc=$doc");
output ("attr count = " . $doc->getAttrCount());
output ("dm_caster=$dm_Caster");

$doc = castToIDfDocument($doc);
output ("doc after cast=$doc");

$doc->setObjectName("DFC_Test_Object");
output ("obj name = " . $doc->getObjectName());

output ("save: " . $doc->save());

## Do a query
$query = DfQuery->new();
output ("query = $query");

$query->setDQL("select * from dm_document where object_name = 'DFC_Test_Object'");
output ("dql = " . $query->getDQL());

$col = $query->execute($session,0);
output ("col = $col");
output ("col state = " . $col->getState());
output ("attr count = " . $col->getAttrCount());

## output column names and widths
for ($i=0;$i<$col->getAttrCount();$i++) {
    output ($i . " : " . $col->getAttr($i)->getName() . " = " . $col->getAttr($i)->getDataType() . " = " . $col->getAttr($i)->getLength());
    push (@col_names,$col->getAttr($i)->getName());
}

## output object ids
while ($col->next()) {
    my $row = $col->getTypedObject();
    #output ("objectid = " . $row->getString("r_object_id"));
    my $row_hash = ();
    foreach my $column (@col_names) {
        $row_hash{$column} = $row->getString($column);
    }
    push(@query_results,\%row_hash);
}
output ("close: " . $col->close());

print "\n\n\nquery results:\n\n";
print join(" | ",@col_names);
foreach my $row (@query_results) {
    foreach $col (@col_names) {
        print "$$row{$col} ";
    }
    print "\n";
}
print "\n";

## test API
output("testing API");
$obj_id = $session->apiGet('create','dm_document');
output ("obj_id = $obj_id");
output ("set = " . $session->apiSet('set',"$obj_id,object_name",'DFC(API)-Perl Test Object'));
output ("link = " . $session->apiExec('link',"$obj_id,'/Temp'"));
output ("save = " . $session->apiExec('save',$obj_id));
output ("API test done");


output("disconnect: " . $session->disconnect());




print "\nEnd\n";

sub output {
    $str = shift;
    my $l = length($str);
    print '#' x $l, "\n";
    print "$str\n";
    print '#' x $l, "\n";
}
    