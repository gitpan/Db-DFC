# ------------------------------------------------------------------- #
# IDfCancelCheckoutOperation
# com.documentum.operations.IDfCancelCheckoutOperation
# ------------------------------------------------------------------- #
package IDfCancelCheckoutOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfCancelCheckoutOperation';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub getKeepLocalFile {
	my $self = shift;
	my $getKeepLocalFile = JPL::AutoLoader::getmeth('getKeepLocalFile',[],['boolean']);
	return $$self->$getKeepLocalFile();
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

sub setKeepLocalFile {
	my ($self,$keepFile) = @_;
	my $setKeepLocalFile = JPL::AutoLoader::getmeth('setKeepLocalFile',['boolean'],[]);
	return $$self->$setKeepLocalFile($keepFile);
}








1;
#__EOF__