# ------------------------------------------------------------------- #
# DfException
# com.documentum.fc.common.DfException
# ------------------------------------------------------------------- #
package DfException;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::DfException';
use JPL::Class 'com::documentum::fc::common::IDfException';


## Not all DfException constructors implemented

sub new {
    my ($self,$errorCode,$serverMsg) = @_;
    if ( $errorCode && $serverMsg) {
        $new = JPL::AutoLoader::getmeth('new',['int','java.lang.String'],[]);
        $temp = com::documentum::fc::common::DfException->$new($errorCode,$serverMsg);
    } elsif ($errorCode) {
        $new = JPL::AutoLoader::getmeth('new',['int'],[]);
        $temp = com::documentum::fc::common::DfException->$new($errorCode);
    } else {
        $new = JPL::AutoLoader::getmeth('new',[],[]);
        $temp = com::documentum::fc::common::DfException->$new();
    }
    if ($temp) {
        bless (\$temp,IDfException);
        return \$temp;
    } else {
        return undef;
    }
}

sub appendException {
    my ($self,$exptHead,$e,$stopAfterNumOfErrors) = @_;
    my $appendException = JPL::AutoLoader::getmeth('appendException',['com.documentum.fc.common.DfException','com.documentum.fc.common.DfException','int'],['com.documentum.fc.common.DfException']);
    my $temp = $$self->$appendException($$exptHead,$$e,$stopAfterNumOfErrors);
    if($temp) {
        bless (\$temp,DfException);
        return \$temp;
    } else {
        return undef;
    }
}

sub parseException {
    my ($self,$streamedExc) = @_;
    my $parseException = JPL::AutoLoader::getmeth('parseException',['java.lang.String'],['com.documentum.fc.common.IDfException']);
    my $temp = $$self->$parseException($streamedExc);
    if($temp) {
        bless (\$temp,IDfException);
        return \$temp;
    } else {
        return undef;
    }
}

sub toString {
    my $self = shift;
    my $toString = JPL::AutoLoader::getmeth('toString',[],[]);
    return $$self->$toString();
}


1;
# __EOF__