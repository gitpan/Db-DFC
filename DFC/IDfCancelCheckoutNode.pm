# ------------------------------------------------------------------- #
# IDfCancelCheckoutNode
# com.documentum.operations.IDfCancelCheckoutNode
# ------------------------------------------------------------------- #
package IDfCancelCheckoutNode;
@ISA = (IDfOperationNode);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfCancelCheckoutNode';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub getKeepLocalFile {
	my $self = shift;
	my $getKeepLocalFile = JPL::AutoLoader::getmeth('getKeepLocalFile',[],['boolean']);
	return $$self->$getKeepLocalFile();
}

sub getObject {
	my $self = shift;
	my $getObject = JPL::AutoLoader::getmeth('getObject',[],['com.documentum.fc.client.IDfSysObject']);
	my $tmp = $$self->$getObject();
	if ($tmp) {
		bless(\$tmp,IDfSysObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getObjectId {
	my $self = shift;
	my $getObjectId = JPL::AutoLoader::getmeth('getObjectId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getObjectId();
	if ($tmp) {
		bless(\$tmp,IDfId);
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