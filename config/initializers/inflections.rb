# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'conta', 'contas'
  inflect.irregular 'perfil', 'perfis'
  inflect.irregular 'mensagem', 'mensagens'
  inflect.irregular 'status_mensagem', 'status_mensagens'
  inflect.irregular 'contato', 'contatos'
  inflect.irregular 'lista_contato', 'listas_contato'
  inflect.irregular 'status_contato', 'status_contatos'
  inflect.irregular 'usuario', 'usuarios'
  inflect.irregular 'comentario_evento', 'comentarios_evento'
  inflect.irregular 'avaliacao_Evento', 'avaliacoes_Evento'
  inflect.irregular 'evento', 'eventos'
  inflect.irregular 'imagem', 'imagens'
  inflect.irregular 'tag', 'tags'
  inflect.irregular 'categoria', 'categorias'
  inflect.irregular 'status_evento', 'status_eventos'
  inflect.irregular 'cidade', 'cidades'
  inflect.irregular 'estado', 'estados'
end