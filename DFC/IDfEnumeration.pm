# ------------------------------------------------------------------- #
# IDfEnumeration
# com.documentum.fc.client.IDfEnumeration
# ------------------------------------------------------------------- #
package IDfEnumeration;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfEnumeration';


sub hasMoreElements {
	my $self = shift;
	my $hasMoreElements = JPL::AutoLoader::getmeth('hasMoreElements',[],['boolean']);
	return $$self->$hasMoreElements();
}

sub nextElement {
	my $self = shift;
	my $nextElement = JPL::AutoLoader::getmeth('nextElement',[],['java.lang.Object']);
	return $$self->$nextElement();
}


1;
#__EOF__