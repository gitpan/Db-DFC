# ------------------------------------------------------------------- #
# IDfOperationPopulator
# com.documentum.operations.IDfOperationPopulator
# ------------------------------------------------------------------- #
package IDfOperationPopulator;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfOperationPopulator';
use JPL::Class 'com.documentum.fc.common.IDfProperties';


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