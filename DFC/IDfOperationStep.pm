# ------------------------------------------------------------------- #
# IDfOperationStep
# com.documentum.operations.IDfOperationStep
# ------------------------------------------------------------------- #
package IDfOperationStep;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfOperationStep';
use JPL::Class 'com::documentum::fc::common::IDfProperties';

sub execute {
	my $self = shift;
	my $execute = JPL::AutoLoader::getmeth('execute',[],['boolean']);
	return $$self->$execute();
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getName {
	my $self = shift;
	my $getName = JPL::AutoLoader::getmeth('getName',[],['java.lang.String']);
	return $$self->$getName();
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


1;
#__EOF__