# ------------------------------------------------------------------- #
# IDfVirtualDocument
# com.documentum.fc.client.IDfVirtualDocument
# ------------------------------------------------------------------- #
package IDfVirtualDocument;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocument';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocumentNode';
use JPL::Class 'com::documentum::fc::common::IDfChangeDescription';
use JPL::Class 'com::documentum::fc::client::IDfVDMNumberingScheme';
use JPL::Class 'com::documentum::fc::common::IDfProperties';


sub getChangeDescription {
	my ($self,$index) = @_;
	my $getChangeDescription = JPL::AutoLoader::getmeth('getChangeDescription',['int'],['com.documentum.fc.common.IDfChangeDescription']);
	my $tmp = $$self->$getChangeDescription($index);
	if ($tmp) {
		bless(\$tmp,IDfChangeDescription);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getChangeDescriptionCount {
	my $self = shift;
	my $getChangeDescriptionCount = JPL::AutoLoader::getmeth('getChangeDescriptionCount',[],['int']);
	return $$self->$getChangeDescriptionCount();
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

sub getIncludeBrokenBindings {
	my $self = shift;
	my $getIncludeBrokenBindings = JPL::AutoLoader::getmeth('getIncludeBrokenBindings',[],['boolean']);
	return $$self->$getIncludeBrokenBindings();
}

sub getNodeFromNodeId {
	my ($self,$nodeId) = @_;
	my $getNodeFromNodeId = JPL::AutoLoader::getmeth('getNodeFromNodeId',['com.documentum.fc.client.IDfId'],['com.documentum.fc.client.IDfVirtualDocumentNode']);
	my $tmp = $$self->$getNodeFromNodeId($$nodeId);
	if ($tmp) {
		bless(\$tmp,IDfVirtualDocumentNode);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getNumberingScheme {
	my $self = shift;
	my $getNumberingScheme = JPL::AutoLoader::getmeth('getNumberingScheme',[],['com.documentum.fc.client.IDfVDMNumberingScheme']);
	my $tmp = $$self->$getNumberingScheme();
	if ($tmp) {
		bless(\$tmp,IDfVDMNumberingScheme);
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

sub getRootNode {
	my $self = shift;
	my $getRootNode = JPL::AutoLoader::getmeth('getRootNode',[],['com.documentum.fc.client.IDfVirtualDocumentNode']);
	my $tmp = $$self->$getRootNode();
	if ($tmp) {
		bless(\$tmp,IDfVirtualDocumentNode);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getUniqueObjectId {
	my ($self,$index) = @_;
	my $getUniqueObjectId = JPL::AutoLoader::getmeth('getUniqueObjectId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getUniqueObjectId($index);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getUniqueObjectIdCount {
	my $self = shift;
	my $getUniqueObjectIdCount = JPL::AutoLoader::getmeth('getUniqueObjectIdCount',[],['int']);
	return $$self->$getUniqueObjectIdCount();
}

sub removeAllChangeDescriptions {
	my ($self,$sessionTag) = @_;
	my $removeAllChangeDescriptions = JPL::AutoLoader::getmeth('removeAllChangeDescriptions',['java.lang.String'],[]);
	return $$self->$removeAllChangeDescriptions($sessionTag);
}

sub removeChangeDescription {
	my ($self,$objectId) = @_;
	my $removeChangeDescription = JPL::AutoLoader::getmeth('removeChangeDescription',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$removeChangeDescription($$objectId);
}

sub removeNode {
	my ($self,$node) = @_;
	my $removeNode = JPL::AutoLoader::getmeth('removeNode',['com.documentum.fc.client.IDfVirtualDocumentNode'],[]);
	return $$self->$removeNode($$node);
}

sub resetSelectedVersionsFromBinding {
	my $self = shift;
	my $resetSelectedVersionsFromBinding = JPL::AutoLoader::getmeth('resetSelectedVersionsFromBinding',[],[]);
	return $$self->$resetSelectedVersionsFromBinding();
}

sub resync {
	my ($self,$session,$objectId,$flags) = @_;
	my $resync = JPL::AutoLoader::getmeth('resync',['com.documentum.fc.client.IDfSession','com.documentum.fc.common.IDfId','int'],[]);
	return $$self->$resync($$session,$$objectId,$flags);
}

sub setIncludeBrokenBindings {
	my ($self,$shouldIncludeBroken) = @_;
	my $setIncludeBrokenBindings = JPL::AutoLoader::getmeth('setIncludeBrokenBindings',['boolean'],[]);
	return $$self->$setIncludeBrokenBindings($shouldIncludeBroken);
}

sub setNumberingScheme {
	my ($self,$scheme) = @_;
	my $setNumberingScheme = JPL::AutoLoader::getmeth('setNumberingScheme',['com.documentum.fc.client.IDfVDMNumberingScheme'],[]);
	return $$self->$setNumberingScheme($$scheme);
}


1;
#__EOF__