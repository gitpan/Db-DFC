# ------------------------------------------------------------------- #
# IDfOperationNode
# com.documentum.operations.IDfOperationNode
# ------------------------------------------------------------------- #
package IDfOperationNode;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfOperationNode';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::common::IDfProperties';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::operations::IDfOperation';


sub getChildren {
	my $self = shift;
	my $getChildren = JPL::AutoLoader::getmeth('getChildren',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getChildren();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getEdgeProperties {
	my $self = shift;
	my $getEdgeProperties = JPL::AutoLoader::getmeth('getEdgeProperties',[],['com.documentum.fc.common.IDfProperties']);
	my $tmp = $$self->$getEdgeProperties();
	if ($tmp) {
		bless(\$tmp,IDfProperties);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getId {
	my $self = shift;
	my $getId = JPL::AutoLoader::getmeth('getId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getId();
	if ($tmp) {
		bless(\$tmp,IDfId);
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

sub getParent {
	my $self = shift;
	my $getParent = JPL::AutoLoader::getmeth('getParent',[],['com.documentum.operations.IDfOperationNode']);
	my $tmp = $$self->$getParent();
	if ($tmp) {
		bless(\$tmp,IDfOperationNode);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getProperties {
	my $self = shift;
	my $getProperties = JPL::AutoLoader::getmeth('getProperties',[],['com.documentum.fc.common.IDfProperties']);
	my $tmp = $$self->$getProperties();
	if ($tmp) {
		bless(\$tmp,IDfProperties);
		return \$tmp;
	} else {
		return undef;
	}
}

sub isRoot {
	my $self = shift;
	my $isRoot = JPL::AutoLoader::getmeth('isRoot',[],['boolean']);
	return $$self->$isRoot();
}


1;
#__EOF__