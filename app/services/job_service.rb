class JobService
    def initialize
      @client ||= Contentful::Client.new(
      access_token: 'MEbZjgOnMbCQH_evrhqwwTLWTi8SVu3E0qQ8n54uKGE',
      space: 'e1d6abr6p6vk',
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
  