# ------------------------------------------------------------------- #
# IDfPersistentObject
# com.documentum.fc.client.IDfPersistentObject
# ------------------------------------------------------------------- #
package IDfPersistentObject;
@ISA = (IDfTypedObject);

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfPersistentObject';
use JPL::Class 'com::documentum::fc::client::IDfValidator';
use JPL::Class 'com::documentum::fc::client::IDfRelation';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::client::IDfCollection';
use JPL::Class 'com::documentum::fc::client::IDfType';


sub addChildRelative {
    my ($self,$reltype,$childid,$childlabel,$isperm,$desc) = @_;
    my $addChildRelative = JPL::AutoLoader::getmeth('addChildRelative',
                                                    ['java.lang.String',
                                                     'com.documentum.fc.common.IDfId',
                                                     'java.lang.String',
                                                     'boolean',
                                                     'java.langString'],
                                                    ['com.documentum.fc.client.IDfRelation']
                                                   );
    my $rel = $$self->$addChildRelative($reltype,$$childid,$childlabel,$isperm,$desc);
    if ($rel) {
        bless (\$rel,IDfRelation);
        return \$rel;
    } else {
        return undef;
    }
}

sub addParentRelative {
    my ($self,$reltype,$parentid,$childlabel,$isperm,$desc) = @_;
    my $addParentRelative = JPL::AutoLoader::getmeth('addParentRelative',
                                                    ['java.lang.String',
                                                     'com.documentum.fc.common.IDfId',
                                                     'java.lang.String',
                                                     'boolean',
                                                     'java.langString'],
                                                    ['com.documentum.fc.client.IDfRelation']
                                                   );
    my $rel = $$self->$addParentRelative($reltype,$$parentid,$childlabel,$isperm,$desc);
    if ($rel) {
        bless (\$rel,IDfRelation);
        return \$rel;
    } else {
        return undef;
    }
}

sub apiExec {
    my ($self,$cmd,$args) = @_;
    my $apiExec = JPL::AutoLoader::getmeth('apiExec',
                                           ['java.lang.String',
                                            'java.lang.String'],
                                           ['boolean']
                                          );
    return $$self->$apiExec($cmd,$args);
}

sub apiGet {
    my ($self,$cmd,$args) = @_;
    my $apiGet = JPL::AutoLoader::getmeth('apiGet',
                                           ['java.lang.String',
                                            'java.lang.String'],
                                           ['java.lang.String']
                                          );
    return $$self->$apiGet($cmd,$args);
}

sub apiSet {
    my ($self,$cmd,$args,$vals) = @_;
    my $apiSet = JPL::AutoLoader::getmeth('apiSet',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String'],
                                           ['boolean']
                                          );
    return $$self->$apiSet($cmd,$args,$vals);
}

sub destroy {
    my $self = shift;
    my $destroy = JPL::AutoLoader::getmeth('destroy',[],[]);
    return $$self->$destroy();
}

sub fetch {
    my ($self,$internaltype) = @_;
    my $fetch = JPL::AutoLoader::getmeth('fetch',
                                         ['java.lang.String'],
                                         ['boolean']
                                        );
    return $$self->$fetch($internatype);
}

sub getChildRelatives {
    my ($self,$reltype) = @_;
    my $getChildRelatives = JPL::AutoLoader::getmeth('getChildRelatives',
                                                    ['java.lang.String'],
                                                    ['com.documentum.fc.client.IDfCollection']
                                                   );
    my $col = $$self->$getChildRelatives($reltype);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getParentRelatives {
    my ($self,$reltype) = @_;
    my $getParentRelatives = JPL::AutoLoader::getmeth('getParentRelatives',
                                                    ['java.lang.String'],
                                                    ['com.documentum.fc.client.IDfCollection']
                                                   );
    my $col = $$self->$getParentRelatives($reltype);
    if ($col) {
        bless (\$col,IDfCollection);
        return \$col;
    } else {
        return undef;
    }
}

sub getType {
    my $self = shift;
    my $getType = JPL::AutoLoader::getmeth('getType',
                                                [],
                                                ['com.documentum.fc.client.IDfType']
                                               );
    my $type = $$self->$getType();
    if ($type) {
        bless (\$type,IDfType);
        return \$type;
    } else {
        return undef;
    }
}

sub getValidator {
    my $self = shift;
    my $getValidator = JPL::AutoLoader::getmeth('getValidator',
                                                [],
                                                ['com.documentum.fc.client.IDfValidator']
                                               );
    my $validator = $$self->$getValidator();
    if ($validator) {
        bless (\$validator,IDfValidator);
        return \$validator;
    } else {
        return undef;
    }
}

sub getVStamp {
    my $self = shift;
    my $getVStamp = JPL::AutoLoader::getmeth('getVStamp',
                                             [],
                                             ['int']
                                            );
    return $$self->$getVStamp();
}

sub isDeleted {
    my $self = shift;
    my $isDeleted = JPL::AutoLoader::getmeth('isDeleted',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isDeleted();
}

sub isDirty {
    my $self = shift;
    my $isDirty = JPL::AutoLoader::getmeth('isDirty',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isDirty();
}

sub isNew {
    my $self = shift;
    my $isNew = JPL::AutoLoader::getmeth('isNew',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isNew();
}
   
sub isReplica {
    my $self = shift;
    my $isReplica = JPL::AutoLoader::getmeth('isReplica',
                                             [],
                                             ['boolean']
                                            );
    return $$self->$isReplica();
}

sub removeChildRelative {
    my ($self,$reltype,$childid,$childlabel) = @_;
    my $removeChildRelative = JPL::AutoLoader::getmeth('removeChildRelative',
                                                    ['java.lang.String',
                                                     'com.documentum.fc.common.IDfId',
                                                     'java.lang.String'],
                                                    []
                                                   );
    return $$self->$removeChildRelative($reltype,$$childid,$childlabel);
}

sub removeParentRelative {
    my ($self,$reltype,$parentid,$childlabel) = @_;
    my $removeParentRelative = JPL::AutoLoader::getmeth('removeParentRelative',
                                                    ['java.lang.String',
                                                     'com.documentum.fc.common.IDfId',
                                                     'java.lang.String'],
                                                    []
                                                   );
    return $$self->$removeParentRelative($reltype,$$parentid,$childlabel);
}

sub revert {
    my $self = shift;
    my $revert =  JPL::AutoLoader::getmeth('revert',[],[]);
    return $$self->$revert();
}
                                                
sub save {
    my $self = shift;
    my $save = JPL::AutoLoader::getmeth('save',[],[]);
    return $$self->$save();
}

sub signoff {
    my ($self,$user,$password,$reason) = @_;
    my $signoff = JPL::AutoLoader::getmeth('signoff',
                                           ['java.lang.String',
                                            'java.lang.String',
                                            'java.lang.String'],
                                           []
                                          );
    return $$self->$signoff($user,$password,$reason);
}
                                              

1;
#__EOF__