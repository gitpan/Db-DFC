# ------------------------------------------------------------------- #
# DFC.pm
# Perl interface to Documentum's DFC
# M. Scott Roth (michael.s.roth@saic.com) -- Alpha Release
#
# Based on DFC Java classes v4.1.0.59 ##
# ------------------------------------------------------------------- #

$VERSION = "0.1";

use JPL::AutoLoader;

#use DfException;
use DfQuery;
use DfLoginInfo;
#use DfClientX;
use DfClient;

use IDfTypedObject;
use IDfPersistentObject;
use IDfSysObject;
use IDfException;
use IDfLoginInfo;
use IDfClient;
use IDfSession;
use IDfCollection;
use IDfAttr;
use IDfQuery;

## com.documentum.fc.client
use JPL::Class 'com::documentum::fc::client::IDfACL';
use JPL::Class 'com::documentum::fc::client::IDfActivity';
use JPL::Class 'com::documentum::fc::client::IDfAliasSet';
use JPL::Class 'com::documentum::fc::client::IDfAssembly';
use JPL::Class 'com::documentum::fc::client::IDfContainment';
use JPL::Class 'com::documentum::fc::client::IDfDocbaseMap';
use JPL::Class 'com::documentum::fc::client::IDfDocument';
use JPL::Class 'com::documentum::fc::client::IDfEnumeration';
use JPL::Class 'com::documentum::fc::client::IDfFolder';
use JPL::Class 'com::documentum::fc::client::IDfFormat';
use JPL::Class 'com::documentum::fc::client::IDfGroup';
use JPL::Class 'com::documentum::fc::client::IDfPackage';
use JPL::Class 'com::documentum::fc::client::IDfProcess';
use JPL::Class 'com::documentum::fc::client::IDfQueueItem';
use JPL::Class 'com::documentum::fc::client::IDfRelation';
use JPL::Class 'com::documentum::fc::client::IDfRelationType';
use JPL::Class 'com::documentum::fc::client::IDfRouter';
use JPL::Class 'com::documentum::fc::client::IDfUser';
use JPL::Class 'com::documentum::fc::client::IDfValueAssistance';
use JPL::Class 'com::documentum::fc::client::IDfVDMNumberingScheme';
use JPL::Class 'com::documentum::fc::client::IDfVersionLabels';
use JPL::Class 'com::documentum::fc::client::IDfVersionPolicy';
use JPL::Class 'com::documentum::fc::client::IDfVersionTreeLabels';
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocument';
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocumentNode';
use JPL::Class 'com::documentum::fc::client::IDfWorkflow';
use JPL::Class 'com::documentum::fc::client::IDfWorkflowBuilder';
use JPL::Class 'com::documentum::fc::client::IDfWorkitem';

## com.documentum.fc.qb
use JPL::Class 'com::documentum::fc::qb::IDfAttrLine';
use JPL::Class 'com::documentum::fc::qb::IDfQueryFullText';
use JPL::Class 'com::documentum::fc::qb::IDfQueryLocation';
use JPL::Class 'com::documentum::fc::qb::IDfQueryMgr';
use JPL::Class 'com::documentum::fc::qb::IDfQueryResultEvent';
use JPL::Class 'com::documentum::fc::qb::IDfQueryResultItem';
use JPL::Class 'com::documentum::fc::qb::IDfQueryResultListener';

## com.documentum.fc.common
use JPL::Class 'com::documentum::fc::common::DfList';
use JPL::Class 'com::documentum::fc::common::DfObject';
use JPL::Class 'com::documentum::fc::common::DfProperties';
use JPL::Class 'com::documentum::fc::common::DfTime';
use JPL::Class 'com::documentum::fc::common::DfTrace';
use JPL::Class 'com::documentum::fc::common::DfUtil';
use JPL::Class 'com::documentum::fc::common::DfValueContext';
use JPL::Class 'com::documentum::fc::common::IDfChangeDescription';
use JPL::Class 'com::documentum::fc::common::IDfProperties';
use JPL::Class 'com::documentum::fc::common::IDfSearchable';

## com.documentum.fc.common.session
## -- Object Classes
use JPL::Class 'com::documentum::fc::common::session::DfServerRequest';
use JPL::Class 'com::documentum::fc::common::session::DfServerResponse';
use JPL::Class 'com::documentum::fc::common::session::DfSessionID';
use JPL::Class 'com::documentum::fc::common::session::IDfiSession';
use JPL::Class 'com::documentum::fc::common::session::IDfiSessionFactory';
use JPL::Class 'com::documentum::fc::common::session::IDfiSessionLocal';
use JPL::Class 'com::documentum::fc::common::session::IDfiSessionRemote';


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


# ------------------------------------------------------------------- #
# IDfValidator
# com.documentum.fc.client.IDfValidator
# ------------------------------------------------------------------- #
package IDfValidator;


# ------------------------------------------------------------------- #
# DfId
# com.documentum.fc.common.DfId
# ------------------------------------------------------------------- #
package DfId;


# ------------------------------------------------------------------- #
# IDfId
# com.documentum.fc.common.IDfId
# ------------------------------------------------------------------- #
package IDfId;


# ------------------------------------------------------------------- #
# IDfType
# com.documentum.fc.client.IDfType
# ------------------------------------------------------------------- #
package IDfType;
@ISA = (IDfPersistentObject);


# ------------------------------------------------------------------- #
# IDfRelation
# com.documentum.fc.client.IDfRelation
# ------------------------------------------------------------------- #
package IDfRelation;
@ISA = (IDfPersistentObject);


# ------------------------------------------------------------------- #
# IDfACL
# com.documentum.fc.client.IDfACL
# ------------------------------------------------------------------- #
package IDfACL;
@ISA = (IDfPersistentObject);


# ------------------------------------------------------------------- #
# IDfFormat
# com.documentum.fc.client.IDfFormat
# ------------------------------------------------------------------- #
package IDfFormat;
@ISA = (IDfPersistentObject);


# ------------------------------------------------------------------- #
# IDfVersionLabels
# com.documentum.fc.client.IDfVersionLabels
# ------------------------------------------------------------------- #
package IDfVersionLabels;


# ------------------------------------------------------------------- #
# IDfVersionPolicy
# com.documentum.fc.client.IDfVersionPolicy
# ------------------------------------------------------------------- #
package IDfVersionPolicy;


# ------------------------------------------------------------------- #
# IDfDocument
# com.documentum.fc.client.IDfDocument
# ------------------------------------------------------------------- #
package IDfDocument;
@ISA = (IDfSysObject);

#
# dm_documents contain no additional methods or attributes than those
# they inherit from dm_sysobject
#


# ------------------------------------------------------------------- #
# IDfProperties
# com.documentum.fc.client.IDfProperties
# ------------------------------------------------------------------- #
package IDfProperties;


# ------------------------------------------------------------------- #
# IDfDocbaseMap
# com.documentum.fc.client.IDfDocbaseMap
# ------------------------------------------------------------------- #
package IDfDocbaseMap;
@ISA = (IDfTypedObject);


# ------------------------------------------------------------------- #
# IDfFolder
# com.documentum.fc.client.IDfFolder
# ------------------------------------------------------------------- #
package IDfFolder;
@ISA = (IDfSysObject);


# ------------------------------------------------------------------- #
# IDfGroup
# com.documentum.fc.client.IDfGroup
# ------------------------------------------------------------------- #
package IDfGroup;
@ISA = (IDfPersistentObject);


# ------------------------------------------------------------------- #
# IDfRelationType
# com.documentum.fc.client.IDfRelationType
# ------------------------------------------------------------------- #
package IDfRelationType;
@ISA = (IDfPersistentObject);


# ------------------------------------------------------------------- #
# IDfUser
# com.documentum.fc.client.IDfUser
# ------------------------------------------------------------------- #
package IDfUser;
@ISA = (IDfPersistentObject);


# ------------------------------------------------------------------- #
# IDfVersionTreeLabels
# com.documentum.fc.client.IDfVersionTreeLabels
# ------------------------------------------------------------------- #
package IDfVersionTreeLabels;


# ------------------------------------------------------------------- #
# IDfWorkflowBuilder
# com.documentum.fc.client.IDfWorkflowBuilder
# ------------------------------------------------------------------- #
package IDfWorkflowBuilder;










1;
#__EOF__    