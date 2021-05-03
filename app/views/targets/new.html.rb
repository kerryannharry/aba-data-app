<h1> New Target: </h1>

<%= form_with url: targets_path, method: :post do |form|%>
    <div class="mb-3">
    <%= form.label :client_id, "Client First and Last name:" %>
    <%= form.collection_select :client_id, Client.all, :id, :name, prompt:"Select One", class: "form-control" %>
    </div>

<% end %>