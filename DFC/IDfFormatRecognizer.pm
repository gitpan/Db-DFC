# ------------------------------------------------------------------- #
# IDfFormatRecognizer
# com.documentum.operations.IDfFormatRecognizer
# ------------------------------------------------------------------- #
package IDfFormatRecognizer;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfFormatRecognizer';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub getDefaultSuggestedFileFormat {
	my $self = shift;
	my $getDefaultSuggestedFileFormat = JPL::AutoLoader::getmeth('getDefaultSuggestedFileFormat',[],['java.lang.String']);
	return $$self->$getDefaultSuggestedFileFormat();
}

sub getSuggestedFileFormats {
	my $self = shift;
	my $getSuggestedFileFormats = JPL::AutoLoader::getmeth('getSuggestedFileFormats',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getSuggestedFileFormats();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}


1;
#__EOF__