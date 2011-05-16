class OralHistory < ActiveFedora::Base

  has_relationship "parts", :is_part_of, :inbound => true

  has_metadata :name => "dublin_core", :type => ActiveFedora::QualifiedDublinCoreDatastream do |m|
    # With QualifiedDublinCoreDatastreams, you only have to declare variations from the standard set of DCMI Terms.  The rest are automatically included.
    m.field "subject_heading", :string, :xml_node => "subject", :encoding => "LCSH"
  end

    has_metadata :name => "properties", :type => ActiveFedora::MetadataDatastream do |m|
      # For metadata that doesn't fit elsewhere, you can create simple xml documents.
      m.field "my_metadata_field", :string
   end
end