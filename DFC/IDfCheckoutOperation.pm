# ------------------------------------------------------------------- #
# IDfCheckoutOperation
# com.documentum.operations.IDfCheckoutOperation
# ------------------------------------------------------------------- #
package IDfCheckoutOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfCheckoutOperation';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub getDefaultDestinationDirectory {
	my $self = shift;
	my $getDefaultDestinationDirectory = JPL::AutoLoader::getmeth('getDefaultDestinationDirectory',[],['java.lang.String']);
	return $$self->$getDefaultDestinationDirectory();
}

sub getDestinationDirectory {
	my $self = shift;
	my $getDestinationDirectory = JPL::AutoLoader::getmeth('getDestinationDirectory',[],['java.lang.String']);
	return $$self->$getDestinationDirectory();
}

sub getObjects {
	my $self = shift;
	my $getObjects = JPL::AutoLoader::getmeth('getObjects',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getObjects();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub setDestinationDirectory {
	my ($self,$dirPath) = @_;
	my $setDestinationDirectory = JPL::AutoLoader::getmeth('setDestinationDirectory',['java.lang.String'],[]);
	return $$self->$setDestinationDirectory($dirPath);
}


1;
#__EOF__