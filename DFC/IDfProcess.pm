# ------------------------------------------------------------------- #
# IDfProcess
# com.documentum.fc.client.IDfProcess
# ------------------------------------------------------------------- #
package IDfProcess;
@ISA = (IDfSysObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfProcess';
use JPL::Class 'com.documentum.fc.common.IDfId';



sub addActivity {
	my ($self,$actName,$actId,$actType,$actPriority) = @_;
	my $addActivity = JPL::AutoLoader::getmeth('addActivity',['java.lang.String','com.documentum.fc.common.IDfId','java.lang.String','int'],[]);
	return $$self->$addActivity($actName,$$actId,$actType,$actPriority);
}

sub getActivityCount {
	my $self = shift;
	my $getActivityCount = JPL::AutoLoader::getmeth('getActivityCount',[],['int']);
	return $$self->$getActivityCount();
}

sub getActivityDefId {
	my ($self,$actIndex) = @_;
	my $getActivityDefId = JPL::AutoLoader::getmeth('getActivityDefId',['int'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getActivityDefId($actIndex);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getActivityName {
	my ($self,$actIndex) = @_;
	my $getActivityName = JPL::AutoLoader::getmeth('getActivityName',['int'],['java.lang.String']);
	return $$self->$getActivityName($actIndex);
}

sub getActivityPriority {
	my ($self,$actIndex) = @_;
	my $getActivityPriority = JPL::AutoLoader::getmeth('getActivityPriority',['int'],['int']);
	return $$self->$getActivityPriority($actIndex);
}

sub getActivityType {
	my ($self,$actIndex) = @_;
	my $getActivityType = JPL::AutoLoader::getmeth('getActivityType',['int'],['int']);
	return $$self->$getActivityType($actIndex);
}

sub getDefinitionState {
	my $self = shift;
	my $getDefinitionState = JPL::AutoLoader::getmeth('getDefinitionState',[],['int']);
	return $$self->$getDefinitionState();
}

sub getLinkDestActivity {
	my ($self,$linkIndex) = @_;
	my $getLinkDestActivity = JPL::AutoLoader::getmeth('getLinkDestActivity',['int'],['java.lang.String']);
	return $$self->$getLinkDestActivity($linkIndex);
}

sub getLinkDestPort {
	my ($self,$linkIndex) = @_;
	my $getLinkDestPort = JPL::AutoLoader::getmeth('getLinkDestPort',['int'],['java.lang.String']);
	return $$self->$getLinkDestPort($linkIndex);
}

sub getLinkName {
	my ($self,$linkIndex) = @_;
	my $getLinkName = JPL::AutoLoader::getmeth('getLinkName',['int'],['java.lang.String']);
	return $$self->$getLinkName($linkIndex);
}

sub getLinkSrcActivity {
	my ($self,$linkIndex) = @_;
	my $getLinkSrcActivity = JPL::AutoLoader::getmeth('getLinkSrcActivity',['int'],['java.lang.String']);
	return $$self->$getLinkSrcActivity($linkIndex);
}

sub getLinkSrcPort {
	my ($self,$linkIndex) = @_;
	my $getLinkSrcPort = JPL::AutoLoader::getmeth('getLinkSrcPort',['int'],['java.lang.String']);
	return $$self->$getLinkSrcPort($linkIndex);
}

sub getPerformerAliasId {
	my $self = shift;
	my $getPerformerAliasId = JPL::AutoLoader::getmeth('getPerformerAliasId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getPerformerAliasId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getProcessLinkCount {
	my $self = shift;
	my $getProcessLinkCount = JPL::AutoLoader::getmeth('getProcessLinkCount',[],['int']);
	return $$self->$getProcessLinkCount();
}

sub install {
	my ($self,$installActivity,$resume) = @_;
	my $install = JPL::AutoLoader::getmeth('install',['boolean','boolean'],[]);
	return $$self->$install($installActivity,$resume);
}

sub invalidate {
	my $self = shift;
	my $invalidate = JPL::AutoLoader::getmeth('invalidate',[],[]);
	return $$self->$invalidate();
}

sub isPrivate {
	my $self = shift;
	my $isPrivate = JPL::AutoLoader::getmeth('isPrivate',[],['boolean']);
	return $$self->$isPrivate();
}

sub removeActivity {
	my ($self,$actName) = @_;
	my $removeActivity = JPL::AutoLoader::getmeth('removeActivity',['java.lang.String'],[]);
	return $$self->$removeActivity($actName);
}

sub removeLink {
	my ($self,$linkName) = @_;
	my $removeLink = JPL::AutoLoader::getmeth('removeLink',['java.lang.String'],[]);
	return $$self->$removeLink($linkName);
}

sub setPerformerAliasId {
	my ($self,$aliasId) = @_;
	my $setPerformerAliasId = JPL::AutoLoader::getmeth('setPerformerAliasId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setPerformerAliasId($$aliasId);
}

sub setPrivate {
	my ($self,$isPrivate) = @_;
	my $setPrivate = JPL::AutoLoader::getmeth('setPrivate',['boolean'],[]);
	return $$self->$setPrivate($isPrivate);
}

sub uninstall {
	my $self = shift;
	my $uninstall = JPL::AutoLoader::getmeth('uninstall',[],[]);
	return $$self->$uninstall();
}

sub validate {
	my $self = shift;
	my $validate = JPL::AutoLoader::getmeth('validate',[],[]);
	return $$self->$validate();
}

sub validateProcessAndActivities {
	my $self = shift;
	my $validateProcessAndActivities = JPL::AutoLoader::getmeth('validateProcessAndActivities',[],[]);
	return $$self->$validateProcessAndActivities();
}


1;
#__EOF__