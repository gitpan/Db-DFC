# ------------------------------------------------------------------- #
# IDfVirtualDocumentNode
# com.documentum.fc.client.IDfVirtualDocumentNode
# ------------------------------------------------------------------- #
package IDfVirtualDocumentNode;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocumentNode';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::fc::client::IDfVersionTreeLabels';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfProperties';
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocument';


sub areChildrenCompound {
	my $self = shift;
	my $areChildrenCompound = JPL::AutoLoader::getmeth('areChildrenCompound',[],['boolean']);
	return $$self->$areChildrenCompound();
}

sub assemble {
	my ($self,$object) = @_;
	my $assemble = JPL::AutoLoader::getmeth('assemble',['com.documentum.fc.client.IDfSysObject'],[]);
	return $$self->$assemble($$object);
}

sub causesCycle {
	my $self = shift;
	my $causesCycle = JPL::AutoLoader::getmeth('causesCycle',[],['boolean']);
	return $$self->$causesCycle();
}

sub disassemble {
	my $self = shift;
	my $disassemble = JPL::AutoLoader::getmeth('disassemble',[],[]);
	return $$self->$disassemble();
}

sub doesSelectedVersionMatchBinding {
	my $self = shift;
	my $doesSelectedVersionMatchBinding = JPL::AutoLoader::getmeth('doesSelectedVersionMatchBinding',[],['boolean']);
	return $$self->$doesSelectedVersionMatchBinding();
}

sub getAssemblyDocument {
	my $self = shift;
	my $getAssemblyDocument = JPL::AutoLoader::getmeth('getAssemblyDocument',[],['com.documentum.fc.client.IDfSysObject']);
	my $tmp = $$self->$getAssemblyDocument();
	if ($tmp) {
		bless(\$tmp,IDfSysObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getAssemblyDocumentBinding {
	my $self = shift;
	my $getAssemblyDocumentBinding = JPL::AutoLoader::getmeth('getAssemblyDocumentBinding',[],['java.lang.String']);
	return $$self->$getAssemblyDocumentBinding();
}

sub getAssemblyParent {
	my $self = shift;
	my $getAssemblyParent = JPL::AutoLoader::getmeth('getAssemblyParent',[],['com.documentum.fc.client.IDfVirtualDocumentNode']);
	my $tmp = $$self->$getAssemblyParent();
	if ($tmp) {
		bless(\$tmp,IDfVirtualDocumentNode);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getAvailableVersions {
	my $self = shift;
	my $getAvailableVersions = JPL::AutoLoader::getmeth('getAvailableVersions',[],['com.documentum.fc.client.IDfVersionTreeLabels']);
	my $tmp = $$self->$getAvailableVersions();
	if ($tmp) {
		bless(\$tmp,IDfVersionTreeLabels);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getBinding {
	my $self = shift;
	my $getBinding = JPL::AutoLoader::getmeth('getBinding',[],['java.lang.String']);
	return $$self->$getBinding();
}

sub getChild {
	my ($self,$index) = @_;
	my $getChild = JPL::AutoLoader::getmeth('getChild',['int'],['com.documentum.fc.client.IDfVirtualDocumentNode']);
	my $tmp = $$self->$getChild($index);
	if ($tmp) {
		bless(\$tmp,IDfVirtualDocumentNode);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getChildCount {
	my $self = shift;
	my $getChildCount = JPL::AutoLoader::getmeth('getChildCount',[],['int']);
	return $$self->$getChildCount();
}

sub getChronId {
	my $self = shift;
	my $getChronId = JPL::AutoLoader::getmeth('getChronId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getChronId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getCopyBehavior {
	my $self = shift;
	my $getCopyBehavior = JPL::AutoLoader::getmeth('getCopyBehavior',[],['int']);
	return $$self->$getCopyBehavior();
}

sub getFollowAssembly {
	my $self = shift;
	my $getFollowAssembly = JPL::AutoLoader::getmeth('getFollowAssembly',[],['boolean']);
	return $$self->$getFollowAssembly();
}

sub getId {
	my $self = shift;
	my $getId = JPL::AutoLoader::getmeth('getId',[],['com.documentum.fc.XXX.IDfId']);
	my $tmp = $$self->$getId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getLateBindingValue {
	my $self = shift;
	my $getLateBindingValue = JPL::AutoLoader::getmeth('getLateBindingValue',[],['java.lang.String']);
	return $$self->$getLateBindingValue();
}

sub getNodeToken {
	my $self = shift;
	my $getNodeToken = JPL::AutoLoader::getmeth('getNodeToken',[],['java.lang.String']);
	return $$self->$getNodeToken();
}

sub getOverrideLateBindingValue {
	my $self = shift;
	my $getOverrideLateBindingValue = JPL::AutoLoader::getmeth('getOverrideLateBindingValue',[],['boolean']);
	return $$self->$getOverrideLateBindingValue();
}

sub getParent {
	my $self = shift;
	my $getParent = JPL::AutoLoader::getmeth('getParent',[],['com.documentum.fc.client.IDfVirtualDocumentNode']);
	my $tmp = $$self->$getParent();
	if ($tmp) {
		bless(\$tmp,IDfVirtualDocumentNode);
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

sub getRelationshipId {
	my $self = shift;
	my $getRelationshipId = JPL::AutoLoader::getmeth('getRelationshipId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getRelationshipId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getSelectedObject {
	my $self = shift;
	my $getSelectedObject = JPL::AutoLoader::getmeth('getSelectedObject',[],['com.documentum.fc.client.IDfSysObject']);
	my $tmp = $$self->$getSelectedObject();
	if ($tmp) {
		bless(\$tmp,IDfSysObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getVDMNumber {
	my $self = shift;
	my $getVDMNumber = JPL::AutoLoader::getmeth('getVDMNumber',[],['java.lang.String']);
	return $$self->$getVDMNumber();
}

sub getVirtualDocumentFromNode {
	my $self = shift;
	my $getVirtualDocumentFromNode = JPL::AutoLoader::getmeth('getVirtualDocumentFromNode',[],['com.documentum.fc.client.IDfVirtualDocument']);
	my $tmp = $$self->$getVirtualDocumentFromNode();
	if ($tmp) {
		bless(\$tmp,IDfVirtualDocument);
		return \$tmp;
	} else {
		return undef;
	}
}

sub isBindingBroken {
	my $self = shift;
	my $isBindingBroken = JPL::AutoLoader::getmeth('isBindingBroken',[],['boolean']);
	return $$self->$isBindingBroken();
}

sub isCompound {
	my $self = shift;
	my $isCompound = JPL::AutoLoader::getmeth('isCompound',[],['boolean']);
	return $$self->$isCompound();
}

sub isFromAssembly {
	my $self = shift;
	my $isFromAssembly = JPL::AutoLoader::getmeth('isFromAssembly',[],['boolean']);
	return $$self->$isFromAssembly();
}

sub isRoot {
	my $self = shift;
	my $isRoot = JPL::AutoLoader::getmeth('isRoot',[],['boolean']);
	return $$self->$isRoot();
}

sub isVirtualDocument {
	my $self = shift;
	my $isVirtualDocument = JPL::AutoLoader::getmeth('isVirtualDocument',[],['boolean']);
	return $$self->$isVirtualDocument();
}

sub resetSelectedVersionFromBinding {
	my $self = shift;
	my $resetSelectedVersionFromBinding = JPL::AutoLoader::getmeth('resetSelectedVersionFromBinding',[],[]);
	return $$self->$resetSelectedVersionFromBinding();
}

sub setAssemblyDocumentBinding {
	my ($self,$bindingValue) = @_;
	my $setAssemblyDocumentBinding = JPL::AutoLoader::getmeth('setAssemblyDocumentBinding',['java.lang.String'],[]);
	return $$self->$setAssemblyDocumentBinding($bindingValue);
}

sub setBinding {
	my ($self,$newBinding) = @_;
	my $setBinding = JPL::AutoLoader::getmeth('setBinding',['java.lang.String'],[]);
	return $$self->$setBinding($newBinding);
}

sub setCopyBehavior {
	my ($self,$behavior) = @_;
	my $setCopyBehavior = JPL::AutoLoader::getmeth('setCopyBehavior',['int'],[]);
	return $$self->$setCopyBehavior($behavior);
}

sub setFollowAssembly {
	my ($self,$followAssembly) = @_;
	my $setFollowAssembly = JPL::AutoLoader::getmeth('setFollowAssembly',['boolean'],[]);
	return $$self->$setFollowAssembly($followAssembly);
}

sub setOverrideLateBindingValue {
	my ($self,$override) = @_;
	my $setOverrideLateBindingValue = JPL::AutoLoader::getmeth('setOverrideLateBindingValue',['boolean'],[]);
	return $$self->$setOverrideLateBindingValue($override);
}

sub setSelectedVersion {
	my ($self,$theVersion) = @_;
	my $setSelectedVersion = JPL::AutoLoader::getmeth('setSelectedVersion',['java.lang.String'],[]);
	return $$self->$setSelectedVersion($theVersion);
}


1;
#__EOF__