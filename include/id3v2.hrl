%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Parse result record definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-record(id3v2_tag,
	{size, version, flags,
	 ext_hdr=none,
	 frames=[],
	 padding=0,
	 footer=none
	}).

-record(id3v2_tag_version,
	{major, minor}).

-record(id3v2_padding,
	{size}).

-record(id3v2_footer,
	{version, flags}).

-record(id3v2_tag_flags,
	{unsynch=false,
	 ext_hdr=false,
	 experimental=false,
	 footer=false
	}).

-record(id3v2_frame_flags,
	{tag_alter_discard=false,
	 file_alter_discard=false,
	 read_only=false,
	 grouping_identity=false,
	 compressed=false,
	 encrypted=false,
	 unsynch=false,
	 data_length_indicator=false
	}).

-record(id3v2_frame,
	{id, name, flags,
	 orig_payload, % If you modify the payload, set this to a non-binary.
	 payload}).


-record(id3v2_generic_frame,
	{}).

-record(id3v2_text_frame,
	{text_encoding, text}).

-record(id3v2_uslt_frame,
	{text_encoding,
	 language,
	 content_descriptor,
	 lyrics_text}).

-record(id3v2_apic_frame,
	{text_encoding, description,
	 mime_type, pic_type, img_data}).

