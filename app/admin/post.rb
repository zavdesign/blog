ActiveAdmin.register Post do
  permit_params :title, :text, :pic
  # :images

  index do
    id_column
    column :title
    column :text
    column :pic
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
      f.file_field :pic
    end
    f.actions
  end

end
