# ------------------------------------------------------------------- #
# DFC.pm
# Perl interface to Documentum's DFC
# M. Scott Roth (michael.s.roth@saic.com) -- Alpha Release
#
# Based on DFC Java classes v4.1.4.85 ##
# ------------------------------------------------------------------- #

$VERSION = '0.2';

use JNI;

# only used in OLE/COM -- use DfClient instead
#use Db::DFC::DfClientX;
use Db::DFC::DfClient;
use Db::DFC::DfException;
use Db::DFC::DfId;
use Db::DFC::DfList;
use Db::DFC::DfLoginInfo;
use Db::DFC::DfProperties;
use Db::DFC::DfQuery;
use Db::DFC::DfTime;

use Db::DFC::IDfTypedObject;
use Db::DFC::IDfPersistentObject;
use Db::DFC::IDfSysObject;
use Db::DFC::IDfException;
use Db::DFC::IDfLoginInfo;
use Db::DFC::IDfClient;
use Db::DFC::IDfSession;
use Db::DFC::IDfCollection;
use Db::DFC::IDfAttr;
use Db::DFC::IDfQuery;
use Db::DFC::IDfDocument;
use Db::DFC::IDfId;
use Db::DFC::IDfUser;
use Db::DFC::IDfFormat;
use Db::DFC::IDfACL;
use Db::DFC::IDfActivity;
use Db::DFC::IDfAliasSet;
use Db::DFC::IDfAssembly;
use Db::DFC::IDfOperation;
use Db::DFC::IDfOperationNode;
use Db::DFC::IDfClientRegistryObject;
use Db::DFC::IDfCancelCheckoutNode;
use Db::DFC::IDfCancelCheckoutOperation;
use Db::DFC::IDfChangeDescription;
use Db::DFC::IDfCheckedOutObject;
use Db::DFC::IDfCheckinNode;
use Db::DFC::IDfCheckinOperation;
use Db::DFC::IDfCheckoutNode;
use Db::DFC::IDfCheckoutOperation;
use Db::DFC::IDfClientRegistry;
# only used in OLE/COM -- use Db::DFC::IDfClient instead
#use Db::DFC::IDfClientX;
use Db::DFC::IDfContainment;
use Db::DFC::IDfCopyNode;
use Db::DFC::IDfCopyOperation;
use Db::DFC::IDfDeleteNode;
use Db::DFC::IDfDeleteOperation;
use Db::DFC::IDfDocbaseMap;
use Db::DFC::IDfEnumeration;
use Db::DFC::IDfExportNode;
use Db::DFC::IDfExportOperation;
use Db::DFC::IDfFolder;
use Db::DFC::IDfFormatRecognizer;
use Db::DFC::IDfGroup;
use Db::DFC::IDfImportNode;
use Db::DFC::IDfImportOperation;
use Db::DFC::IDfList;
use Db::DFC::IDfLocalObject;
use Db::DFC::IDfMoveNode;
use Db::DFC::IDfMoveOperation;
use Db::DFC::IDfOperationError;
use Db::DFC::IDfOperationMonitor;
use Db::DFC::IDfOperationPopulator;
use Db::DFC::IDfOperationStep;
use Db::DFC::IDfPackage;
use Db::DFC::IDfProcess;
use Db::DFC::IDfProperties;
use Db::DFC::IDfQueueItem;
use Db::DFC::IDfRegistry;
use Db::DFC::IDfRelation;
use Db::DFC::IDfRelationType;
use Db::DFC::IDfRouter;
use Db::DFC::IDfSearchable;
use Db::DFC::IDfTime;
use Db::DFC::IDfType;
use Db::DFC::IDfValidator;
use Db::DFC::IDfValue;
use Db::DFC::IDfValueAssistance;
use Db::DFC::IDfVDMNumberingScheme;
use Db::DFC::IDfVersionLabels;
use Db::DFC::IDfVersionPolicy;
use Db::DFC::IDfVirtualDocumentNode;
use Db::DFC::IDfVirtualDocument;
use Db::DFC::IDfWorkflow;
use Db::DFC::IDfWorkflowBuilder;
use Db::DFC::IDfWorkitem;


######################################################################

use JPL::Class 'dm_Caster';
$dm_Caster = dm_Caster->new();

sub castToIDfDocument {
    my $obj = shift;
    my $castToIDfDocument = JPL::AutoLoader::getmeth('castToIDfDocument',
                                              ['java.lang.Object'],
                                              ['com.documentum.fc.client.IDfDocument']);
    my $new_obj = $dm_Caster->$castToIDfDocument($$obj);
    bless(\$new_obj,IDfDocument);
    return \$new_obj;
}

sub castToIDfSysObject {
    my $obj = shift;
    my $castToIDfSysObject = JPL::AutoLoader::getmeth('castToIDfSysObject',
                                              ['java.lang.Object'],
                                              ['com.documentum.fc.client.IDfSysObject']);
    my $new_obj = $dm_Caster->$castToIDfSysObject($$obj);
    bless(\$new_obj,IDfSysObject);
    return \$new_obj;
}

sub castToIDfFolder {
    my $obj = shift;
    my $castToIDfFolder = JPL::AutoLoader::getmeth('castToIDfFolder',
                                              ['java.lang.Object'],
                                              ['com.documentum.fc.client.IDfFolder']);
    my $new_obj = $dm_Caster->$castToIDfFolder($$obj);
    bless(\$new_obj,IDfFolder);
    return \$new_obj;
}

sub castToIDfPersistentObject {
    my $obj = shift;
    my $castToIDfPersistentObject = JPL::AutoLoader::getmeth('castToIDfPersistentObject',
                                              ['java.lang.Object'],
                                              ['com.documentum.fc.client.IDfPersistentObject']);
    my $new_obj = $dm_Caster->$castToIDfPersistentObject($$obj);
    bless(\$new_obj,IDfPersistentObject);
    return \$new_obj;
}


######################################################################


1;
#__EOF__    