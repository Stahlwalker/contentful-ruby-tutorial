class JobService
    def initialize
      @client ||= Contentful::Client.new(
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      space: ENV['CONTENTFUL_SPACE_ID'],
      dynamic_entries: :auto,
      raise_errors: true
    )
    end
  
  def rich_renderer
    @renderer = RichTextRenderer::Renderer.new
  end
  
  def contentful_jobs
    @client.entries(content_type: "jobs", include: 2)
  end
    end 
  