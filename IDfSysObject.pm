# ------------------------------------------------------------------- #
# IDfSysObject
# com::documentum::fc::client::IDfSysObject
# ------------------------------------------------------------------- #
package IDfSysObject;
@ISA = (IDfPersistentObject);

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::fc::client::IDfPersistentObject';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::client::IDfCollection';
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocument';
use JPL::Class 'com::documentum::fc::common::IDfTime';
use JPL::Class 'com::documentum::fc::client::IDfACL';
use JPL::Class 'com::documentum::fc::client::IDfFormat';
use JPL::Class 'com::documentum::fc::client::IDfVersionLabels';


sub addNote {
    my ($self,$id,$keep) = @_;
    my $addNote = JPL::AutoLoader::getmeth('addNote',
                                           ['com.documentum.fc.common.IDfId',
                                            'boolean'],
                                           []
                                          );
    return $$self->$addNote($$id,$keep);
}

sub addReference {
    my ($self,$folderid,$bindcon,$bindlabel) = @_;
    my $addReference = JPL::AutoLoader::getmeth('addReference',
                                           ['com.documentum.fc.common.IDfId',
                                            'java.lang.String',
                                            'java.lang.String'],
                                           ['com.documentum.fc.common.IDfId']
                                          );
    my $reference = $$self->$addReference($$folderid,$bindcon,$bindlabel);
    if ($reference) {
        bless (\$reference,IDfId);
        return \$reference;
    } else {
        return undef;
    }
}

sub addRendition {
    my ($self,$filename,$formatname) = @_;
    my $addRendition = JPL::AutoLoader::getmeth('addRendition',
                                                ['java.lang.String',
                                                 'java.lang.String'],
                                                []
                                               );
    return $self->$addRendition($filename,$formatname);
}

sub addRenditionEx {
    my ($self,$filename,$formatname,$page,$storagename,$atomic) = @_;
    my $addRenditionEx = JPL::AutoLoader::getmeth('addRenditionEx',
                                                ['java.lang.String',
                                                 'java.lang.String',
                                                 'int',
                                                 'java.lang.String',
                                                 'boolean'],
                                                []
                                               );
    return $self->$addRenditionEx($filename,$formatname,$page,$storagename,$atomic);
}

sub appendContent {
    my ($self,$content) = @_;
    my $appendContent = JPL::AutoLoader::getmeth('appendContent',
                                                ['java.io.ByteArrayOutputStream'],
                                                []
                                               );
    return $self->$appendContent($content);
}

sub appendFile {
    my ($self,$filename) = @_;
    my $appendFile = JPL::AutoLoader::getmeth('appendFile',
                                              ['java.lang.String'],
                                              []
                                             );
    return $self->$appendFile($filename);
}

sub appendPart {
    my ($self,$compid,$vlabel,$usenodeverlabel,$followasbl,$copychild) = @_;
    my $appendPart = JPL::AutoLoader::getmeth('appendPart',
                                              ['com.documentum.fc.common.IDfId',
                                               'java.lang.String',
                                               'boolean',
                                               'boolean',
                                               'int'],
                                              ['com.documentum.fc.common.IDfId']
                                             );
    my $id = $$self->$appendPart($$compid,$vlabel,$usenodeverlabel,$followasbl,$copychild);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub areAttibutesModifiable {
    my $self = shift;
    my $areAttibutesModifiable = JPL::AutoLoader::getmeth('areAttibutesModifiable',
                                                          [],
                                                          ['boolean']
                                                         );
    return $$self->$areAttibutesModifiable();
}

sub assemble {
    my ($self,$id,$freq,$qual,$nodesortlist) = @_;
    my $assemble = JPL::AutoLoader::getmeth('assemble',
                                            ['com.documentum.fc.common.IDfId',
                                             'int',
                                             'java.lang.String',
                                             'java.lang.String'],
                                            ['com.documentum.fc.client.IDfCollection']
                                           );
    my $col = $$self->$assemble($$id,$freq,$qual,$nodesortlist);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub asVirtualDocument {
    my ($self,$latebind,$followroot) = @_;
    my $asVirtualDocument = JPL::AutoLoader::getmeth('asVirtualDocument',
                                            ['java.lang.String',
                                             'boolean'],
                                            ['com.documentum.fc.client.IDfVirtualDocument']
                                           );
    my $vd = $$self->$asVirtualDocument($latebind,$followroot);
    if ($vd) {
        bless (\$vd,IDfVirtualDocument);
        return \$vd;
    } else {
        return undef;
    }
}

sub attachPolicy {
    my ($self,$policyid,$state,$scope) = @_;
    my $attachPolicy = JPL::AutoLoader::getmeth('attachPolicy',
                                                ['com.documentum.fc.common.IDfId',
                                                 'java.lang.String',
                                                 'java.lang.String'],
                                                []
                                               );
    return $$self->$attachPolicy($$policyid,$state,$scope);
}

sub bindFile {
    my ($self,$pageno,$srcid,$srcpageno) = @_;
    my $bindFile = JPL::AutoLoader::getmeth('bindFile',
                                            ['int',
                                             'com.documentum.fc.common.IDfId',
                                             'int'],
                                            []
                                           );
    return $$self->$bindFile($pageno,$$srcid,$srcpageno);
}

sub branch {
    my ($self,$vlabel) = @_;
    my $branch = JPL::AutoLoader::getmeth('branch',
                                          ['java.lang.String'],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $id = $$self->$branch($vlabel);
    if ($id) {
        bless (\$id,$IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub cancelCheckout {
    my $self = shift;
    my $cancelCheckout = JPL::AutoLoader::getmeth('cancelCheckout',[],[]);
    return $$self->$cancelCheckout();
}

sub cancelCheckoutEx {
    my ($self,$sendmail,$compound,$special) = @_;
    my $cancelCheckoutEx = JPL::AutoLoader::getmeth('cancelCheckoutEx',
                                                    ['boolean',
                                                     'java.lang.String',
                                                     'java.lang.String'],
                                                    []
                                                   );
    return $$self->$cancelCheckoutEx($sendmail,$compound,$special);
}

sub cancelScheduledDemote {
    my ($self,$date) = @_;
    my $cancelScheduledDemote = JPL::AutoLoader::getmeth('cancelScheduledDemote',
                                                         ['com.documentum.fc.common.IDfTime'],
                                                         []
                                                        );
    return $$self->$cancelScheduledDemote($$date);
}

sub cancelScheduledPromote {
    my ($self,$date) = @_;
    my $cancelScheduledPromote = JPL::AutoLoader::getmeth('cancelScheduledPromote',
                                                         ['com.documentum.fc.common.IDfTime'],
                                                         []
                                                        );
    return $$self->$cancelScheduledPromote($$date);
}

sub cancelScheduledResume {
    my ($self,$date) = @_;
    my $cancelScheduledResume = JPL::AutoLoader::getmeth('cancelScheduledResume',
                                                         ['com.documentum.fc.common.IDfTime'],
                                                         []
                                                        );
    return $$self->$cancelScheduledResume($$date);
}

sub cancelScheduledSuspend {
    my ($self,$date) = @_;
    my $cancelScheduledSuspend = JPL::AutoLoader::getmeth('cancelScheduledSuspend',
                                                         ['com.documentum.fc.common.IDfTime'],
                                                         []
                                                        );
    return $$self->$cancelScheduledSuspend($$date);
}

sub canDemote {
    my $self = shift;
    my $canDemote = JPL::AutoLoader::getmeth('canDemote',[],['boolean']);
    return $$self->$canDemote();
}

sub canPromote {
    my $self = shift;
    my $canPromote = JPL::AutoLoader::getmeth('canPromote',[],['boolean']);
    return $$self->$canPromote();
}

sub canResume {
    my $self = shift;
    my $canResume = JPL::AutoLoader::getmeth('canResume',[],['boolean']);
    return $$self->$canResume();
}

sub canSuspend {
    my $self = shift;
    my $canSuspend = JPL::AutoLoader::getmeth('canSuspend',[],['boolean']);
    return $$self->$canSuspend();
}

sub checkin {
    my ($self,$lock,$vlabel) = @_;
    my $checkin = JPL::AutoLoader::getmeth('checkin',
                                           ['boolean',
                                            'java.lang.String',
                                            'java.lang.String'],
                                           ['com.documentum.fc.common.IDfId']
                                          );
    my $id = $$self->$checkin($lock,$vlabel);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub checkinEx {
    my ($self,$lock,$vlabel,$oldCAV,$oldSAV,$newCAV,$newSAV) = @_;
    my $checkinEx = JPL::AutoLoader::getmeth('checkinEx',
                                           ['boolean',
                                            'java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String'],
                                           ['com.documentum.fc.common.IDfId']
                                          );
    my $id = $$self->$checkinEx($lock,$vlabel,$oldCAV,$oldSAV,$newCAV,$newSAV);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub checkout {
    my $self = shift;
    my $checkout = JPL::AutoLoader::getmeth('checkout',[],[]);
    return $$self->$checkout();
}

sub checkoutEx {
    my ($self,$vlabel,$CAV,$SAV) = @_;
    my $checkoutEx = JPL::AutoLoader::getmeth('checkoutEx',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String'],
                                           ['com.documentum.fc.common.IDfId']
                                          );
    my $id = $$self->$checkoutEx($lock,$vlabel,$CAV,$SAV);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub demote {
    my ($self,$state,$tobase) = @_;
    my $demote = JPL::AutoLoader::getmeth('demote',
                                          ['java.lang.String',
                                           'boolean'],
                                          []
                                         );
    return $$self->$demote($state,$tobase);
}

sub destroyAllVersions {
    my $self = shift;
    my $destroyAllVersions = JPL::AutoLoader::getmeth('destroyAllVersions',[],[]);
    return $$self->$destroyAllVersions();
}

sub detachPolicy {
    my $self = shift;
    my $detachPolicy = JPL::AutoLoader::getmeth('detachPolicy',[],[]);
    return $$self->$detachPolicy();
}

sub disassemble {
    my $self = shift;
    my $disassemble = JPL::AutoLoader::getmeth('disassemble',[],[]);
    return $$self->$disassemble();
}

sub freeze {
    my ($self,$freezecomps) = @_;
    my $freeze = JPL::AutoLoader::getmeth('freeze',
                                          ['boolean'],
                                          []
                                         );
    return $$self->$freeze($freezecomps);
}

sub getAccessDate {
    my $self = shift;
    my $getAccessDate = JPL::AutoLoader::getmeth('getAccessDate',
                                                 [],
                                                 ['com.documentum.fc.common.IDfTime']
                                                );
    my $date = $$self->$getAccessDate();
    if ($date) {
        bless (\$date,IDfTime);
        return \$date;
    } else {
        return undef;
    }
}

sub getAccessorCount {
    my $self = shift;
    my $getAccessorCount = JPL::AutoLoader::getmeth('getAccessorCount',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getAccessorCount();
}

sub getAccessorName {
    my ($self,$idx) = @_;
    my $getAccessorName = JPL::AutoLoader::getmeth('getAccessorName',
                                                 ['int'],
                                                 ['java.lang.String']
                                                );
    return $$self->$getAccessorName($idx);
}

sub getAccessorPermit {
    my ($self,$idx) = @_;
    my $getAccessorPermit = JPL::AutoLoader::getmeth('getAccessorPermit',
                                                 ['int'],
                                                 ['java.lang.String']
                                                );
    return $$self->$getAccessorPermit($idx);
}

sub getAccessorXPermit {
    my ($self,$idx) = @_;
    my $getAccessorXPermit = JPL::AutoLoader::getmeth('getAccessorXPermit',
                                                 ['int'],
                                                 ['int']
                                                );
    return $$self->$getAccessorXPermit($idx);
}

sub getAccessorXPermitNames {
    my ($self,$idx) = @_;
    my $getAccessorXPermitNames = JPL::AutoLoader::getmeth('getAccessorXPermitNames',
                                                 ['int'],
                                                 ['java.lang.String']
                                                );
    return $$self->$getAccessorXPermitNames($idx);
}

sub getACL {
    my $self = shift;
    my $getACL = JPL::AutoLoader::getmeth('getACL',
                                          [],
                                          ['com.documentum.fc.client.IDfACL']
                                         );
    my $acl = $$self->$getACL();
    if ($acl) {
        bless (\$acl,IDfACL);
        return \$acl;
    } else {
        return undef;
    }
}

sub getACLDomain {
    my $self = shift;
    my $getACLDomain = JPL::AutoLoader::getmeth('getACLDomain',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getACLDomain();
}

sub getACLName {
    my $self = shift;
    my $getACLName = JPL::AutoLoader::getmeth('getACLName',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getACLName();
}

sub getAclRefValid {
    my $self = shift;
    my $getAclRefValid = JPL::AutoLoader::getmeth('getAclRefValid',
                                                 [],
                                                 ['boolean']
                                                );
    return $$self->$getAclRefValid();
}

sub getAliasSet {
    my $self = shift;
    my $getAliasSet = JPL::AutoLoader::getmeth('getAliasSet',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getAliasSet();
}

sub getAliasSetId {
    my $self = shift;
    my $getAliasSetId = JPL::AutoLoader::getmeth('getAliasSetId',
                                          [],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $acl = $$self->$getAliasSetId();
    if ($acl) {
        bless (\$acl,IDfId);
        return \$acl;
    } else {
        return undef;
    }
}

sub getAntecedentId {
    my $self = shift;
    my $getAntecedentId  = JPL::AutoLoader::getmeth('getAntecedentId',
                                          [],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $id = $$self->$getAntecedentId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getApplicationType {
    my $self = shift;
    my $getApplicationType  = JPL::AutoLoader::getmeth('getApplicationType',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getApplicationType();
}

sub getAssembledFromId {
    my $self = shift;
    my $getAssembledFromId  = JPL::AutoLoader::getmeth('getAssembledFromId',
                                          [],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $id = $$self->$getAssembledFromId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getAuthors {
    my ($self,$idx) = @_;
    my $getAuthors  = JPL::AutoLoader::getmeth('getAuthors',
                                               ['int'],
                                               ['java.lang.String']
                                              );
    return $$self->$getAuthors($idx);
}

sub getAuthorsCount {
    my $self = shift;
    my $getAuthorsCount  = JPL::AutoLoader::getmeth('getAuthorsCount',
                                               [],
                                               ['int']
                                              );
    return $$self->$getAuthorsCount();
}

sub getBranchCount {
    my $self = shift;
    my $getBranchCount  = JPL::AutoLoader::getmeth('getBranchCount',
                                               [],
                                               ['int']
                                              );
    return $$self->$getBranchCount();
}

sub getCabinetId {
    my $self = shift;
    my $getCabinetId  = JPL::AutoLoader::getmeth('getCabinetId',
                                          [],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $id = $$self->$getCabinetId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getChronicleId {
    my $self = shift;
    my $getChronicleId = JPL::AutoLoader::getmeth('getChronicleId',
                                          [],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $id = $$self->$getChronicleId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getCollectionForContent {
    my ($self,$format,$page) = @_;
    my $getCollectionForContent = JPL::AutoLoader::getmeth('getCollectionForContent',
                                                           ['java.lang.String',
                                                            'int'],
                                                           ['com.documentum.fc.client.IDfCollection']
                                                          );
    my $col = $$self->$getCollectionForContent($format,$page);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getComponentId {
    my ($self,$idx) = @_;
    my $getComponentId = JPL::AutoLoader::getmeth('getComponentId',
                                                  ['int'],
                                                  ['com.documentum.fc.common.IDfId']
                                                 );
    my $id = $$self->$getComponentId($idx);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getComponentIdCount {
    my $self = shift;
    my $getComponentIdCount = JPL::AutoLoader::getmeth('getComponentIdCount',
                                                  [],
                                                  ['int']
                                                 );
    return $$self->$getComponentIdCount();
}

sub getCompoundArchitecture {
    my $self = shift;
    my $getCompoundArchitecture = JPL::AutoLoader::getmeth('getCompoundArchitecture',
                                                  [],
                                                  ['java.lang.String']
                                                 );
    return $$self->$getCompoundArchitecture();
}

sub getContainId {
    my ($self,$idx) = @_;
    my $getContainId = JPL::AutoLoader::getmeth('getContainId',
                                                  ['int'],
                                                  ['com.documentum.fc.common.IDfId']
                                                 );
    my $id = $$self->$getContainId($idx);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getContainIdCount {
    my $self = shift;
    my $getContainIdCount = JPL::AutoLoader::getmeth('getContainIdCount',
                                                  [],
                                                  ['int']
                                                 );
    return $$self->$getContainIdCount();
}

sub getContent {
    my $self = shift;
    my $getContent = JPL::AutoLoader::getmeth('getContent',
                                                 [],
                                                 ['java.io.ByteArrayInputStream']
                                                );
    return $$self->$getContent();
}

sub getContentEx {
    my ($self,$format,$page) = @_;
    my $getContentEx = JPL::AutoLoader::getmeth('getContentEx',
                                                 ['java.lang.String',
                                                  'int'],
                                                 ['java.io.ByteArrayInputStream']
                                                );
    return $$self->$getContentEx($format,$page);
}

sub getContentsId {
    my $self = shift;
    my $getContentsId = JPL::AutoLoader::getmeth('getContentsId',
                                                  [],
                                                  ['com.documentum.fc.common.IDfId']
                                                 );
    my $id = $$self->$getContentsId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getContentSize {
    my $self = shift;
    my $getContentSize = JPL::AutoLoader::getmeth('getContentSize',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getContentSize();
}

sub getContentState {
    my $self = shift;
    my $getContentState = JPL::AutoLoader::getmeth('getContentState',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getContentState();
}

sub getContentStateCount {
    my $self = shift;
    my $getContentStateCount = JPL::AutoLoader::getmeth('getContentStateCount',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getContentStateCount();
}

sub getContentType {
    my $self = shift;
    my $getContentType = JPL::AutoLoader::getmeth('getContentType',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getContentType();
}

sub getCreationDate {
    my $self = shift;
    my $getCreationDate = JPL::AutoLoader::getmeth('getCreationDate',
                                                 [],
                                                 ['com.documentum.fc.common.IDfTime']
                                                );
    my $ctime = $$self->$getCreationDate();
    if ($ctime) {
        bless (\$ctime,IDfTime);
        return \$ctime;
    } else {
        return undef;
    }
}

sub getCreatorName {
    my $self = shift;
    my $getCreatorName = JPL::AutoLoader::getmeth('getCreatorName',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getCreatorName();
}

sub getCurrentState {
    my $self = shift;
    my $getCurrentState = JPL::AutoLoader::getmeth('getCurrentState',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getCurrentState();
}

sub getCurrentStateName {
    my $self = shift;
    my $getCurrentStateName = JPL::AutoLoader::getmeth('getCurrentStateName',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getCurrentStateName();
}

sub getDirectDescendant {
    my $self = shift;
    my $getDirectDescendant = JPL::AutoLoader::getmeth('getDirectDescendant',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getDirectDescendant();
}

sub getExceptionStateName {
    my $self = shift;
    my $getExceptionStateName = JPL::AutoLoader::getmeth('getExceptionStateName',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getExceptionStateName();
}

sub getFile {
    my $self = shift;
    my $getFile = JPL::AutoLoader::getmeth('getFile',
                                           ['java.lang.String'],
                                           ['java.lang.String']
                                          );
    return $$self->$getFile();
}

sub getFileEx {
    my ($self,$filename,$format,$page,$resource) = @_;
    my $getFileEx = JPL::AutoLoader::getmeth('getFileEx',
                                             ['java.lang.String',
                                              'java.lang.String',
                                              'int',
                                              'boolean'],
                                             ['java.lang.String']
                                            );
    return $$self->$getFileEx($filename,$format,$page,$resource);
}

sub getFolderId {
    my ($self,$idx) = @_;
    my $getFolderId = JPL::AutoLoader::getmeth('getFolderId',
                                             ['int'],
                                             ['com.documentum.fc.common.IDfId']
                                            );
    my $id = $$self->$getFolderId($idx);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getFolderIdCount {
    my $self = shift;
    my $getFolderIdCount = JPL::AutoLoader::getmeth('getFolderIdCount',
                                                    [],
                                                    ['int']
                                                   );
    return $$self->$getFolderIdCount();
}

sub getFormat {
    my $self = shift;
    my $getFormat = JPL::AutoLoader::getmeth('getFormat',
                                             [],
                                             ['com.documentum.fc.client.IDfFormat']
                                            );
    $format = $$self->$getFormat();
    if ($format) {
        bless (\$format,IDfFormat);
        return \$format;
    } else {
        return undef;
    }
}

sub getFrozenAssemblyCount {
    my $self = shift;
    my $getFrozenAssemblyCount = JPL::AutoLoader::getmeth('getFrozenAssemblyCount',
                                                          [],
                                                          ['int']
                                                         );
    return $$self->$getFrozenAssemblyCount();
}

sub getFullText {
    my $self = shift;
    my $getFullText = JPL::AutoLoader::getmeth('getFullText',
                                               [],
                                               ['boolean']
                                              );
    return $$self->$getFullText();
}

sub getGroupName {
    my $self = shift;
    my $getGroupName = JPL::AutoLoader::getmeth('getGroupName',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getGroupName();
}

sub getGroupPermit {
    my $self = shift;
    my $getGroupPermit = JPL::AutoLoader::getmeth('getGroupPermit',
                                               [],
                                               ['int']
                                              );
    return $$self->$getGroupPermit();
}

sub getHasEvents {
    my $self = shift;
    my $getHasEvents = JPL::AutoLoader::getmeth('getHasEvents',
                                               [],
                                               ['boolean']
                                              );
    return $$self->$getHasEvents();
}

sub getHasFolder {
    my $self = shift;
    my $getHasFolder = JPL::AutoLoader::getmeth('getHasFolder',
                                               [],
                                               ['boolean']
                                              );
    return $$self->$getHasFolder();
}

sub getHasFrozenAssembly {
    my $self = shift;
    my $getHasFrozenAssembly = JPL::AutoLoader::getmeth('getHasFrozenAssembly',
                                               [],
                                               ['boolean']
                                              );
    return $$self->$getHasFrozenAssembly();
}

sub getImplicitVersionLabel {
    my $self = shift;
    my $getImplicitVersionLabel = JPL::AutoLoader::getmeth('getImplicitVersionLabel',
                                               [],
                                               ['boolean']
                                              );
    return $$self->$getImplicitVersionLabel();
}

sub getKeywords {
    my ($self,$idx) = @_;
    my $getKeywords = JPL::AutoLoader::getmeth('getKeywords',
                                               ['int'],
                                               ['java.lang.String']
                                              );
    return $$self->$getKeywords($idx);
}

sub getKeywordsCount {
    my $self = shift;
    my $getKeywordsCount = JPL::AutoLoader::getmeth('getKeywordsCount',
                                               [],
                                               ['int']
                                              );
    return $$self->$getKeywordsCount();
}

sub getLatestFlag {
    my $self = shift;
    my $getLatestFlag = JPL::AutoLoader::getmeth('getLatestFlag',
                                               [],
                                               ['boolean']
                                              );
    return $$self->$getLatestFlag();
}

sub getLinkCount {
    my $self = shift;
    my $getLinkCount = JPL::AutoLoader::getmeth('getLinkCount',
                                               [],
                                               ['int']
                                              );
    return $$self->$getLinkCount();
}

sub getLinkHighCount {
    my $self = shift;
    my $getLinkHighCount = JPL::AutoLoader::getmeth('getLinkHighCount',
                                               [],
                                               ['int']
                                              );
    return $$self->$getLinkHighCount();
}

sub getLocations {
    my ($self,$attrs) = @_;
    my $getLocations= JPL::AutoLoader::getmeth('getLocations',
                                               ['java.lang.String'],
                                               ['com.documentum.fc.client.IDfCollection']
                                              );
    my $col = $$self->$getLocations($attrs);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getLockDate {
    my $self = shift;
    my $getLockDate= JPL::AutoLoader::getmeth('getLockDate',
                                               [],
                                               ['com.documentum.fc.common.IDfTime']
                                              );
    my $ldate = $$self->$getLockDate();
    if ($ldate) {
        bless (\$ldate,IDfTime);
        return \$ldate;
    } else {
        return undef;
    }
}

sub getLockMachine {
    my $self = shift;
    my $getLockMachine = JPL::AutoLoader::getmeth('getLockMachine',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getLockMachine();
}

sub getLockOwner {
    my $self = shift;
    my $getLockOwner = JPL::AutoLoader::getmeth('getLockOwner',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getLockOwner();
}

sub getLogEntry {
    my $self = shift;
    my $getLogEntry  = JPL::AutoLoader::getmeth('getLogEntry',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getLogEntry ();
}

sub getMasterDocbase {
    my $self = shift;
    my $getMasterDocbase  = JPL::AutoLoader::getmeth('getMasterDocbase',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getMasterDocbase();
}

sub getModifier {
    my $self = shift;
    my $getModifier  = JPL::AutoLoader::getmeth('getModifier',
                                               [],
                                               ['java.lang.String']
                                              );
    return $$self->$getModifier();
}

sub getModifyDate {
    my $self = shift;
    my $getModifyDate= JPL::AutoLoader::getmeth('getModifyDate',
                                               [],
                                               ['com.documentum.fc.common.IDfTime']
                                              );
    my $mdate = $$self->$getModifyDate();
    if ($mdate) {
        bless (\$mdate,IDfTime);
        return \$mdate;
    } else {
        return undef;
    }
}

sub getNextStateName {
    my $self = shift;
    my $getNextStateName = JPL::AutoLoader::getmeth('getNextStateName',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getNextStateName();
}

sub getObjectName {
    my $self = shift;
    my $getObjectName = JPL::AutoLoader::getmeth('getObjectName',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getObjectName();
}

sub getOwnerName {
    my $self = shift;
    my $getOwnerName = JPL::AutoLoader::getmeth('getOwnerName',
                                                 [],
                                                 ['java.lang.String']
                                                );
    return $$self->$getOwnerName();
}

sub getOwnerPermit {
    my $self = shift;
    my $getOwnerPermit = JPL::AutoLoader::getmeth('getOwnerPermit',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getOwnerPermit();
}

sub getPageCount {
    my $self = shift;
    my $getPageCount = JPL::AutoLoader::getmeth('getPageCount',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getPageCount();
}

sub getPath {
    my ($self,$page) = shift;
    my $getPath = JPL::AutoLoader::getmeth('getPath',
                                        ['int'],
                                        ['java.lang.String']
                                       );
    return $$self->$getPath($page);
}

sub getPermit {
    my $self = shift;
    my $getPermit = JPL::AutoLoader::getmeth('getPermit',
                                                 [],
                                                 ['int']
                                                );
    return $$self->$getPermit();
}

sub getPermitEx {
    my ($self,$name) = @_;
    my $getPermitEx = JPL::AutoLoader::getmeth('getPermitEx',
                                               ['java.lang.String'],
                                               ['int']
                                              );
    return $$self->$getPermitEx($name);
}

sub getPolicyId {
    my $self = shift;
    my $getPolicyId = JPL::AutoLoader::getmeth('getPolicyId',
                                               [],
                                               ['com.documentum.fc.common.IDfId']
                                              );
    my $id = $$self->$getPolicyId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getPolicyName {
    my $self = shift;
    my $getPolicyName = JPL::AutoLoader::getmeth('getPolicyName',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getPolicyName();
}

sub getPreviousStateName {
    my $self = shift;
    my $getPreviousStateName = JPL::AutoLoader::getmeth('getPreviousStateName',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getPreviousStateName();
}

sub getReferenceCount {
    my $self = shift;
    my $getReferenceCount = JPL::AutoLoader::getmeth('getReferenceCount',
                                        [],
                                        ['int']
                                       );
    return $$self->$getReferenceCount();
}

sub getRemoteId {
    my $self = shift;
    my $getRemoteId = JPL::AutoLoader::getmeth('getRemoteId',
                                               [],
                                               ['com.documentum.fc.common.IDfId']
                                              );
    my $id = $$self->$getRemoteId();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getRenditions {
    my ($self,$attrs) = @_;
    my $getRenditions= JPL::AutoLoader::getmeth('getRenditions',
                                               ['java.lang.String'],
                                               ['com.documentum.fc.client.IDfCollection']
                                              );
    my $col = $$self->$getRenditions($attrs);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getResolutionLabel {
    my $self = shift;
    my $getResolutionLabel= JPL::AutoLoader::getmeth('getResolutionLabel',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getResolutionLabel();
}

sub getResumeState {
    my $self = shift;
    my $getResumeState= JPL::AutoLoader::getmeth('getResumeState',
                                        [],
                                        ['int']
                                       );
    return $$self->$getResumeState();
}

sub getResumeStateName {
    my $self = shift;
    my $getResumeStateName= JPL::AutoLoader::getmeth('getResumeStateName',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getResumeStateName();
}

sub getRouters {
    my ($self,$attrs,$order) = @_;
    my $getRouters= JPL::AutoLoader::getmeth('getRouters',
                                               ['java.lang.String',
                                                'java.lang.String'],
                                               ['com.documentum.fc.client.IDfCollection']
                                              );
    my $col = $$self->$getRouters($attrs,$order);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getStatus {
    my $self = shift;
    my $getStatus= JPL::AutoLoader::getmeth('getStatus',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getStatus();
}

sub getStorageType {
    my $self = shift;
    my $getStorageType= JPL::AutoLoader::getmeth('getStorageType',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getStorageType();
}

sub getSubject {
    my $self = shift;
    my $getSubject = JPL::AutoLoader::getmeth('getSubject',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getSubject();
}

sub getTitle {
    my $self = shift;
    my $getTitle = JPL::AutoLoader::getmeth('getTitle',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getTitle();
}

sub getTypeName {
    my $self = shift;
    my $getTypeName = JPL::AutoLoader::getmeth('getTypeName',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getTypeName();
}

sub getVersionLabel {
    my ($self,$idx) = @_;
    my $getVersionLabel = JPL::AutoLoader::getmeth('getVersionLabel',
                                        ['int'],
                                        ['java.lang.String']
                                       );
    return $$self->$getVersionLabel($idx);
}

sub getVersionLabelCount {
    my $self = shift;
    my $getVersionLabelCount = JPL::AutoLoader::getmeth('getVersionLabelCount',
                                        [],
                                        ['int']
                                       );
    return $$self->$getVersionLabelCount();
}

sub getVersionLabels{
    my $self = shift;
    my $getVersionLabels= JPL::AutoLoader::getmeth('getVersionLabels',
                                               [],
                                               ['com.documentum.fc.client.IDfVersionLabels']
                                              );
    my $vl = $$self->$getVersionLabels();
    if ($vl) {
        bless (\$vl,IDfVersionLabels);
        return \$vl;
    } else {
        return undef;
    }
}

sub getVersionPolicy {
    my $self = shift;
    my $getVersionPolicy = JPL::AutoLoader::getmeth('getVersionPolicy',
                                                    [],
                                                    ['com.documentum.fc.client.IDfVersionPolicy']
                                                   );
    my $vp = $$self->$getVersionPolicy();
    if ($vp) {
        bless (\$vp,IDfVersionPolicy);
        return \$vp;
    } else {
        return undef;
    }
}

sub getVersions {
    my ($self,$attrs) = @_;
    my $getVersions= JPL::AutoLoader::getmeth('getVersions',
                                               ['java.lang.String'],
                                               ['com.documentum.fc.client.IDfCollection']
                                              );
    my $col = $$self->$getVersions($attrs);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getWorkflows {
    my ($self,$attrs,$order) = @_;
    my $getWorkflows= JPL::AutoLoader::getmeth('getWorkflows',
                                               ['java.lang.String',
                                                'java.lang.String'],
                                               ['com.documentum.fc.client.IDfCollection']
                                              );
    my $col = $$self->$getWorkflows($attrs,$order);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getWorldPermit {
    my $self = shift;
    my $getWorldPermit = JPL::AutoLoader::getmeth('getWorldPermit',
                                        [],
                                        ['int']
                                       );
    return $$self->$getWorldPermit();
}

sub getXPermit {
    my ($self,$name) = @_;
    my $getXPermit = JPL::AutoLoader::getmeth('getXPermit',
                                        ['java.lang.String'],
                                        ['int']
                                       );
    return $$self->$getXPermit($name);
}

sub getXPermitList {
    my $self = shift;
    my $getXPermitList = JPL::AutoLoader::getmeth('getXPermitList',
                                        [],
                                        ['java.lang.String']
                                       );
    return $$self->$getXPermitList();
}

sub getXPermitNames {
    my ($self,$name) = @_;
    my $getXPermitNames = JPL::AutoLoader::getmeth('getXPermitNames',
                                        ['java.lang.String'],
                                        ['java.lang.String']
                                       );
    return $$self->$getXPermitNames($name);
}

sub grant {
    my ($self,$name,$permit,$xperms) = @_;
    my $grant = JPL::AutoLoader::getmeth('grant',
                                        ['java.lang.String',
                                         'int',
                                         'java.lang.String'],
                                        []
                                       );
    return $$self->$grant($name,$permits,$xperms);
}

sub hasPermission {
    my ($self,$permission,$name) = @_;
    my $hasPermission = JPL::AutoLoader::getmeth('hasPermission',
                                        ['java.lang.String',
                                         'java.lang.String'],
                                        ['boolean']
                                       );
    return $$self->$hasPermission($name,$permission);
}

sub insertContent {
    my ($self,$content,$page) = @_;
    my $insertContent = JPL::AutoLoader::getmeth('insertContent',
                                        ['java.io.ByteArrayOutputStream',
                                         'int'],
                                        []
                                       );
    return $$self->$insertContent($content,$page);
}

sub insertFile {
    my ($self,$file,$page) = @_;
    my $insertFile = JPL::AutoLoader::getmeth('insertFile',
                                        ['java.lang.String',
                                         'int'],
                                        []
                                       );
    return $$self->$insertFile($file,$page);
}

sub insertPart {
    my ($self,$compid,$version,$beforeid,$order,$orderflag,$userversionlabel) = @_;
    my $insertPart = JPL::AutoLoader::getmeth('insertPart',
                                             ['com.documentum.fc.common.IDfId',
                                              'java.langString',
                                              'com.documentum.fc.common.IDfId',
                                              'double',
                                              'boolean',
                                              'boolean'],
                                             ['com.documentum.fc.common.IDfId']
                                            );
    my $id = $$self->$insertPart($$compid,$version,$$beforeid,$order,$orderflag,$userversionlabel);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub isArchived {
    my $self = shift;
    my $isArchived = JPL::AutoLoader::getmeth('isArchived',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isArchived();
}

sub isCheckedOut {
    my $self = shift;
    my $isCheckedOut = JPL::AutoLoader::getmeth('isCheckedOut',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isCheckedOut();
}

sub isCheckedOutBy {
    my ($self,$user) = @_;
    my $isCheckedOutBy = JPL::AutoLoader::getmeth('isCheckedOutBy',
                                        ['java.lang.String'],
                                        ['boolean']
                                       );
    return $$self->$isCheckedOutBy($user);
}

sub isFrozen {
    my $self = shift;
    my $isFrozen = JPL::AutoLoader::getmeth('isFrozen',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isFrozen();
}

sub isHidden {
    my $self = shift;
    my $isHidden = JPL::AutoLoader::getmeth('isHidden',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isHidden();
}

sub isImmutable {
    my $self = shift;
    my $isImmutable = JPL::AutoLoader::getmeth('isImmutable',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isImmutable();
}

sub isLinkResolved {
    my $self = shift;
    my $isLinkResolved = JPL::AutoLoader::getmeth('isLinkResolved',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isLinkResolved();
}

sub isPublic {
    my $self = shift;
    my $isPublic = JPL::AutoLoader::getmeth('isPublic',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isPublic();
}

sub isReference {
    my $self = shift;
    my $isReference = JPL::AutoLoader::getmeth('isReference',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isReference();
}

sub isSuspended {
    my $self = shift;
    my $isSuspended= JPL::AutoLoader::getmeth('isSuspended',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isSuspended();
}

sub isVirtualDocument {
    my $self = shift;
    my $isVirtualDocument = JPL::AutoLoader::getmeth('isVirtualDocument',
                                        [],
                                        ['boolean']
                                       );
    return $$self->$isVirtualDocument();
}

sub link {
    my ($self,$folder) = @_;
    my $link = JPL::AutoLoader::getmeth('link',
                                        ['java.lang.String'],
                                        []
                                       );
    return $$self->$link($folder);
}

sub mark {
    my ($self,$label) = @_;
    my $mark = JPL::AutoLoader::getmeth('mark',
                                        ['java.lang.String'],
                                        []
                                       );
    return $$self->$mark($label);
}

sub mount {
    my ($self,$path) = @_;
    my $mount = JPL::AutoLoader::getmeth('mount',
                                        ['java.lang.String'],
                                        []
                                       );
    return $$self->$mount($path);
}

sub print {
    my ($self,$printer,$cover,$save,$num,$start,$stop) = @_;
    my $print = JPL::AutoLoader::getmeth('print',
                                        ['java.lang.String',
                                         'boolean',
                                         'boolean',
                                         'int',
                                         'int',
                                         'int'],
                                        ['java.lang.String']
                                       );
    return $$self->$print($printer,$cover,$save,$num,$start,$stop);
}

sub promote {
    my ($self,$state,$override,$test) = @_;
    my $promote = JPL::AutoLoader::getmeth('promote',
                                        ['java.lang.String',
                                         'boolean',
                                         'boolean'],
                                        []
                                       );
    return $$self->$promote($state,$override,$test);
}

sub prune {
    my ($self,$keeplabel) = @_;
    my $prune = JPL::AutoLoader::getmeth('prune',
                                        ['boolean'],
                                        []
                                       );
    return $$self->$prune($keeplabel);
}

sub queue {
    my ($self,$owner,$event,$priority,$sendmail,$duedate,$msg) = @_;
    my $queue = JPL::AutoLoader::getmeth('queue',
                                         ['java.lang.String',
                                          'java.langString',
                                          'int',
                                          'boolean',
                                          'com.documentum.fc.common.IDfTime',
                                          'java.lang.String'],
                                         ['com.documentum.fc.common.IDfId']
                                        );
    my $id = $$self->$queue($self,$owner,$event,$priority,$sendmail,$$duedate,$msg);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub refreshReference {
    my $self = shift;
    my $refreshReference = JPL::AutoLoader::getmeth('refreshReference',
                                                    [],
                                                    []
                                                   );
    return $$self->$refreshReference();
}

sub registerEvent {
    my ($self,$msg,$event,$priority,$sendmail);
    my $registerEvent = JPL::AutoLoader::getmeth('registerEvent',
                                                 ['java.lang.String',
                                                  'java.lang.String',
                                                  'int',
                                                  'boolean'],
                                                 []
                                                );
    return $$self->$registerEvent($msg,$event,$priority,$sendmail);
}

sub removeContent {
    my ($self,$page) = @_;
    my $removeContent = JPL::AutoLoader::getmeth('removeContent',
                                                 ['int'],
                                                 []
                                                );
    return $$self->$removeContent($page);
}

sub removeNote {
    my ($self,$id) = @_;
    my $removeNote = JPL::AutoLoader::getmeth('removeNote',
                                           ['com.documentum.fc.common.IDfId'],
                                           []
                                          );
    return $$self->$removeNote($$id);
}

sub removePart {
    my ($self,$id) = @_;
    my $removePart = JPL::AutoLoader::getmeth('removePart',
                                           ['com.documentum.fc.common.IDfId'],
                                           []
                                          );
    return $$self->$removePart($$id);
}

sub removeRendition {
    my ($self,$format) = @_;
    my $removeRendition = JPL::AutoLoader::getmeth('removeRendition',
                                           ['java.lang.String'],
                                           []
                                          );
    return $$self->$removeRendition($format);
}

sub removeRenditionEx {
    my ($self,$format,$pageno,$atomic) = @_;
    my $removeRenditionEx = JPL::AutoLoader::getmeth('removeRenditionEx',
                                           ['java.lang.String',
                                            'int',
                                            'boolean'],
                                           []
                                          );
    return $$self->$removeRenditionEx($format,$pageno,$atomic);
}

sub resolveAlias {
    my ($self,$scope) = @_;
    my $resolveAlias = JPL::AutoLoader::getmeth('resolveAlias',
                                           ['java.lang.String'],
                                           ['java.lang.String']
                                          );
    return $$self->$resolveAlias($scope);
}

sub resume {
    my ($self,$state,$tobase,$override,$test) = @_;
    my $resume = JPL::AutoLoader::getmeth('resume',
                                          ['java.lang.String',
                                           'boolean',
                                           'boolean',
                                           'boolean'],
                                           []
                                          );
    return $$self->$resume($state,$tobase,$override,$test);
}

sub revertACL {
    my $self = shift;
    my $revertACL = JPL::AutoLoader::getmeth('revertACL',[],[]);
    return $$self->$revertACL();
}

sub revoke {
    my ($self,$name,$xperms) = @_;
    my $revoke = JPL::AutoLoader::getmeth('revoke',
                                          ['java.lang.String',
                                           'java.lang.String'],
                                          []
                                         );
    return $$self->$revoke($name,$xperms);
}

sub saveAsNew {
    my ($self,$share) = @_;
    my $saveAsNew = JPL::AutoLoader::getmeth('saveAsNew',
                                         ['boolean'],
                                         ['com.documentum.fc.common.IDfId']
                                        );
    my $id = $$self->$saveAsNew($share);
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub saveLock {
    my $self = shift;
    my $saveLock = JPL::AutoLoader::getmeth('saveLock',[],[]);
    return $$self->$saveLock();
}

sub scheduleDemote {
    my ($self,$state,$when) = @_;
    my $scheduleDemote = JPL::AutoLoader::getmeth('scheduleDemote',
                                                  ['java.lang.String',
                                                   'com.documentum.fc.common.IDfTime'],
                                                  []
                                                 );
    return $$self->$scheduleDemote($state,$$when);
}

sub schedulePromote {
    my ($self,$state,$when,$override) = @_;
    my $schedulePromote = JPL::AutoLoader::getmeth('schedulePromote',
                                                   ['java.lang.String',
                                                    'com.documentum.fc.common.IDfTime',
                                                    'boolean'],
                                                   []
                                                  );
    return $$self->$schedulePromote($state,$$when,$override);
}

sub scheduleResume {
    my ($self,$state,$when,$tobase,$override) = @_;
    my $scheduleResume = JPL::AutoLoader::getmeth('scheduleResume',
                                                   ['java.lang.String',
                                                    'com.documentum.fc.common.IDfTime',
                                                    'boolean',
                                                    'boolean'],
                                                   []
                                                  );
    return $$self->$scheduleResume($state,$$when,$tobase,$override);
}

sub scheduleSuspend {
    my ($self,$state,$when,$override) = @_;
    my $scheduleSuspend = JPL::AutoLoader::getmeth('scheduleSuspend',
                                                   ['java.lang.String',
                                                    'com.documentum.fc.common.IDfTime',
                                                    'boolean'],
                                                   []
                                                  );
    return $$self->$scheduleSuspend($state,$$when,$override);
}

sub setACL {
    my ($self,$acl) = @_;
    my $setACL = JPL::AutoLoader::getmeth('setACL',
                                          ['com.documentum.fc.client.IDfACL'],
                                          []
                                         );
    return $$self->$setACL($$acl);
}

sub setACLDomain {
    my ($self,$acldomain) = @_;
    my $setACLDomain = JPL::AutoLoader::getmeth('setACLDomain',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$setACLDomain($acldomain);
}

sub setACLName {
    my ($self,$aclname) = @_;
    my $setACLName = JPL::AutoLoader::getmeth('setACLName',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$setACLName($aclname);
}

sub setApplicationType {
    my ($self,$type) = @_;
    my $setApplicationType = JPL::AutoLoader::getmeth('setApplicationType',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$setApplicationType($type);
}

sub setArchived {
    my ($self,$archived) = @_;
    my $setArchived = JPL::AutoLoader::getmeth('setArchived',
                                          ['boolean'],
                                          []
                                         );
    return $$self->$setArchived($archived);
}

sub setAuthors {
    my ($self,$idx,$author) = @_;
    my $setAuthors = JPL::AutoLoader::getmeth('setAuthors',
                                              ['int',
                                               'java.lang.String'],
                                              []
                                             );
    return $$self->$setAuthors($idx,$author);
}

sub setCompoundArchitecture {
    my ($self,$arch) = @_;
    my $setCompoundArchitecture = JPL::AutoLoader::getmeth('setCompoundArchitecture',
                                              ['java.lang.String'],
                                              []
                                             );
    return $$self->$setCompoundArchitecture($arch);
}

sub setContent {
    my ($self,$content) = @_;
    my $setContent = JPL::AutoLoader::getmeth('setContent',
                                              ['java.io.ByteArrayOutputStream'],
                                              ['boolean']
                                             );
    return $$self->$setContent($content);
}

sub setContentEx {
    my ($self,$content,$format,$page) = @_;
    my $setContentEx = JPL::AutoLoader::getmeth('setContentEx',
                                              ['java.io.ByteArrayOutputStream',
                                               'java.lang.String',
                                               'int'],
                                              ['boolean']
                                             );
    return $$self->$setContentEx($content,$format,$page);
}

sub setContentType {
    my ($self,$type) = @_;
    my $setContentType = JPL::AutoLoader::getmeth('setContentType',
                                              ['java.lang.String'],
                                              []
                                             );
    return $$self->$setContentType($type);
}

sub setFile {
    my ($self,$filename) = @_;
    my $setFile = JPL::AutoLoader::getmeth('setFile',
                                           ['java.lang.String'],
                                           []
                                          );
    return $$self->$setFile($filename);
}

sub setFileEx {
    my ($self,$filename,$format,$page,$other) = @_;
    my $setFileEx = JPL::AutoLoader::getmeth('setFileEx',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'int',
                                            'java.lang.String'],
                                           []
                                          );
    return $$self->$setFileEx($filename,$format,$page,$other);
}

sub setFullText {
    my ($self,$fulltext) = @_;
    my $setFullText = JPL::AutoLoader::getmeth('setFullText',
                                           ['boolean'],
                                           []
                                          );
    return $$self->$setFullText($fulltext);
}

sub setGroupName {
    my ($self,$name) = @_;
    my $setGroupName = JPL::AutoLoader::getmeth('setGroupName',
                                           ['java.lang.String'],
                                           []
                                          );
    return $$self->$setGroupName($name);
}

sub setGroupPermit {
    my ($self,$permit) = @_;
    my $setGroupPermit = JPL::AutoLoader::getmeth('setGroupPermit',
                                           ['int'],
                                           []
                                          );
    return $$self->$setGroupPermit($permit);
}

sub setHidden {
    my ($self,$hidden) = @_;
    my $setHidden = JPL::AutoLoader::getmeth('setHidden',
                                           ['boolean'],
                                           []
                                          );
    return $$self->$setHidden($hidden);
}

sub setIsVirtualDocument {
    my ($self,$virtual) = @_;
    my $setIsVirtualDocument = JPL::AutoLoader::getmeth('setIsVirtualDocument',
                                           ['boolean'],
                                           []
                                          );
    return $$self->$setIsVirtualDocument($virtual);
}

sub setKeywords {
    my ($self,$idx,$word) = @_;
    my $setKeywords = JPL::AutoLoader::getmeth('setKeywords',
                                           ['int',
                                            'java.lang.String'],
                                           []
                                          );
    return $$self->$setKeywords($idx,$word);
}

sub setLinkResolved {
    my ($self,$resolved) = @_;
    my $setLinkResolved = JPL::AutoLoader::getmeth('setLinkResolved',
                                           ['boolean'],
                                           []
                                          );
    return $$self->$setLinkResolved($resolved);
}

sub setLogEntry {
    my ($self,$entry) = @_;
    my $setLogEntry = JPL::AutoLoader::getmeth('setLogEntry',
                                           ['java.lang.String'],
                                           []
                                          );
    return $$self->$setLogEntry($entry);
}

sub setObjectName {
    my ($self,$name) = @_;
    my $setObjectName = JPL::AutoLoader::getmeth('setObjectName',
                                                 ['java.lang.String'],
                                                 []
                                                );
    return $$self->$setObjectName($name);
}

sub setOwnerName {
    my ($self,$name) = @_;
    my $setOwnerName = JPL::AutoLoader::getmeth('setOwnerName',
                                                 ['java.lang.String'],
                                                 []
                                                );
    return $$self->$setOwnerName($name);
}

sub setOwnerPermit {
    my ($self,$permit) = @_;
    my $setOwnerPermit = JPL::AutoLoader::getmeth('setOwnerPermit',
                                                 ['int'],
                                                 []
                                                );
    return $$self->$setOwnerPermit($permit);
}

sub setPath {
    my ($self,$filename,$format,$page,$other) = @_;
    my $setPath = JPL::AutoLoader::getmeth('setPath',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'int',
                                            'java.lang.String'],
                                           []
                                          );
    return $$self->$setPath($filename,$format,$page,$other);
}

sub setResolutionLabel {
    my ($self,$label) = @_;
    my $setResolutionLabel = JPL::AutoLoader::getmeth('setResolutionLabel',
                                                 ['java.lang.String'],
                                                 []
                                                );
    return $$self->$setResolutionLabel($label);
}

sub setStatus {
    my ($self,$status) = @_;
    my $setStatus = JPL::AutoLoader::getmeth('setStatus',
                                             ['java.lang.String'],
                                             []
                                            );
    return $$self->$setStatus($status);
}

sub setStorageType {
    my ($self,$type) = @_;
    my $setStorageType = JPL::AutoLoader::getmeth('setStorageType',
                                             ['java.lang.String'],
                                             []
                                            );
    return $$self->$setStorageType($type);
}

sub setSubject {
    my ($self,$subject) = @_;
    my $setSubject = JPL::AutoLoader::getmeth('setSubject',
                                                 ['java.lang.String'],
                                                 []
                                                );
    return $$self->$setSubject($subject);
}

sub setTitle {
    my ($self,$title) = @_;
    my $setTitle = JPL::AutoLoader::getmeth('setTitle',
                                                 ['java.lang.String'],
                                                 []
                                                );
    return $$self->$setTitle($title);
}

sub setWorldPermit {
    my ($self,$permit) = @_;
    my $setWorldPermit = JPL::AutoLoader::getmeth('setWorldPermit',
                                                 ['int'],
                                                 []
                                                );
    return $$self->$setWorldPermit($permit);
}

sub suspend {
    my ($self,$state,$override,$test) = @_;
    my $suspend = JPL::AutoLoader::getmeth('suspend',
                                           ['java.lang.String',
                                            'boolean',
                                            'boolean'],
                                           []
                                          );
    return $$self->$suspend($state,$override,$test);
}

sub unfreeze {
    my ($self,$thawcomps) = @_;
    my $unfreeze = JPL::AutoLoader::getmeth('unfreeze',
                                            ['boolean'],
                                            []
                                           );
    return $$self->$unfreeze($thawcomps);
}

sub unlink {
    my ($self,$folder) = @_;
    my $unlink = JPL::AutoLoader::getmeth('unlink',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$unlink($folder);
}

sub unmark {
    my ($self,$label) = @_;
    my $unmark = JPL::AutoLoader::getmeth('unmark',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$unmark($label);
}

sub unRegisterEvent {
    my ($self,$event) = @_;
    my $unRegisterEvent = JPL::AutoLoader::getmeth('unRegisterEvent',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$unRegisterEvent($event);
}

sub updatePart {
    my ($self,$containid,$version,$order,$usernodeverlabel,$followasmbly,$copychild) = @_;
    my $updatePart = JPL::AutoLoader::getmeth('updatePart',
                                          ['com.documentum.fc.common.IDfId',
                                           'java.lang.String',
                                           'double',
                                           'boolean',
                                           'boolean',
                                           'int'],
                                          []
                                         );
    return $$self->$updatePart($$containid,$version,$order,$usernodeverlabel,$followasmbly,$copychild);
}

sub useACL {
    my ($self,$acl) = @_;
    my $useACL = JPL::AutoLoader::getmeth('useACL',
                                          ['java.lang.String'],
                                          []
                                         );
    return $$self->$useACL($acl);
}


1;
#__EOF__