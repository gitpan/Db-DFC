# ------------------------------------------------------------------- #
# IDfVDMNumberingScheme
# com.documentum.fc.client.IDfVDMNumberingScheme
# ------------------------------------------------------------------- #
package IDfVDMNumberingScheme;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfVDMNumberingScheme';
use JPL::Class 'com::documentum::fc::client::IDfVirtualDocumentNode';


sub getNodeNumber {
	my ($self,$node) = @_;
	my $getNodeNumber = JPL::AutoLoader::getmeth('getNodeNumber',['com.documentum.fc.client.IDfVirtualDocumentNode'],['java.lang.String']);
	return $$self->$getNodeNumber($$node);
}

sub getStartingNumber {
	my $self = shift;
	my $getStartingNumber = JPL::AutoLoader::getmeth('getStartingNumber',[],['java.lang.String']);
	return $$self->$getStartingNumber();
}

sub setStartingNumber {
	my ($self,$startingNumber) = @_;
	my $setStartingNumber = JPL::AutoLoader::getmeth('setStartingNumber',['java.lang.String'],[]);
	return $$self->$setStartingNumber($startingNumber);
}


1;
#__EOF__