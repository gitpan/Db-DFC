# ------------------------------------------------------------------- #
# IDfOperationError
# com.documentum.operations.IDfOperationError
# ------------------------------------------------------------------- #
package IDfOperationError;

use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfOperationError';
use JPL::Class 'com::documentum::fc::common::IDfException';
use JPL::Class 'com::documentum::operations::IDfOperationNode';
use JPL::Class 'com::documentum::operations::IDfOperation';


sub getErrorCode {
	my $self = shift;
	my $getErrorCode = JPL::AutoLoader::getmeth('getErrorCode',[],['int']);
	return $$self->$getErrorCode();
}

sub getException {
	my $self = shift;
	my $getException = JPL::AutoLoader::getmeth('getException',[],['com.documentum.fc.common.IDfException']);
	my $tmp = $$self->$getException();
	if ($tmp) {
		bless(\$tmp,IDfException);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getMessage {
	my $self = shift;
	my $getMessage = JPL::AutoLoader::getmeth('getMessage',[],['java.lang.String']);
	return $$self->$getMessage();
}

sub getNode {
	my $self = shift;
	my $getNode = JPL::AutoLoader::getmeth('getNode',[],['com.documentum.operations.IDfOperationNode']);
	my $tmp = $$self->$getNode();
	if ($tmp) {
		bless(\$tmp,IDfOperationNode);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getOperation {
	my $self = shift;
	my $getOperation = JPL::AutoLoader::getmeth('getOperation',[],['com.documentum.operations.IDfOperation']);
	my $tmp = $$self->$getOperation();
	if ($tmp) {
		bless(\$tmp,IDfOperation);
		return \$tmp;
	} else {
		return undef;
	}
}


1;
#__EOF__