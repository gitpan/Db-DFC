# ------------------------------------------------------------------- #
# IDfDeleteNode
# com.documentum.operations.IDfDeleteNode
# ------------------------------------------------------------------- #
package IDfDeleteNode;
@ISA = (IDfOperationNode);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfDeleteNode';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::fc::common::IDfId';


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

sub wasDeleted {
	my $self = shift;
	my $wasDeleted = JPL::AutoLoader::getmeth('wasDeleted',[],['boolean']);
	return $$self->$wasDeleted();
}


1;
#__EOF__