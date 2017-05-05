ActiveAdmin.register Post do
  permit_params :title, :text
  # :images

  index do
    id_column
    column :title
    column :text
    # column :images
    column :created_at
    column :created_at
    actions
  end

  filter :title
  filter :text


  form do |f|
    f.inputs "Post" do
      f.input :title
      f.input :text
      # f.file_field :images
    end
    f.actions
  end

end
