# ------------------------------------------------------------------- #
# IDfFormat
# com.documentum.fc.client.IDfFormat
# ------------------------------------------------------------------- #
package IDfFormat;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfFormat';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub canIndex {
    my $self = shift;
    my $canIndex = JPL::AutoLoader::getmeth('canIndex',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$canIndex();
}

sub getCOMClassId {
    my $self = shift;
    my $getCOMClassId = JPL::AutoLoader::getmeth('getCOMClassId',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getCOMClassId();
}

sub getDescription {
    my $self = shift;
    my $getDescription = JPL::AutoLoader::getmeth('getDescription',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getDescription();
}

sub getDOSExtension {
    my $self = shift;
    my $getDOSExtension = JPL::AutoLoader::getmeth('getDOSExtension',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getDOSExtension();
}

sub getMacCreator {
    my $self = shift;
    my $getMacCreator = JPL::AutoLoader::getmeth('getMacCreator',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getMacCreator();
}

sub getMacType {
    my $self = shift;
    my $getMacType = JPL::AutoLoader::getmeth('getMacType',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getMacType();
}

sub getMIMEType {
    my $self = shift;
    my $getMIMEType = JPL::AutoLoader::getmeth('getMIMEType',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getMIMEType();
}

sub getName {
    my $self = shift;
    my $getName = JPL::AutoLoader::getmeth('getName',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getName();
}

sub getTopicFilter {
    my $self = shift;
    my $getTopicFilter = JPL::AutoLoader::getmeth('getTopicFilter',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getTopicFilter();
}

sub getTopicFormat {
    my $self = shift;
    my $getTopicFormat = JPL::AutoLoader::getmeth('getTopicFormat',
                                          [],
                                          ['com.documentum.fc.common.IDfId']
                                         );
    my $id = $$self->$getTopicFormat();
    if ($id) {
        bless (\$id,IDfId);
        return \$id;
    } else {
        return undef;
    }
}

sub getTopicFormatName {
    my $self = shift;
    my $getTopicFormatName = JPL::AutoLoader::getmeth('getTopicFormatName',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getTopicFormatName();
}

sub getTopicTransform {
    my $self = shift;
    my $getTopicTransform = JPL::AutoLoader::getmeth('getTopicTransform',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$getTopicTransform();
}

sub getWin31App {
    my $self = shift;
    my $getWin31App = JPL::AutoLoader::getmeth('getWin31App',
                                          [],
                                          ['java.lang.String']
                                         );
    return $$self->$getWin31App();
}

sub isHidden {
    my $self = shift;
    my $isHidden = JPL::AutoLoader::getmeth('isHidden',
                                          [],
                                          ['boolean']
                                         );
    return $$self->$isHidden();
}


1;
#__EOF__
