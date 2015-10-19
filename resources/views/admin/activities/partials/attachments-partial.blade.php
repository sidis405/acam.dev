<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>Allegati </strong>
            </div>
            <div class="panel-body">
                <div class="col-lg-12">

                    @foreach($activity->attachments as $attachment)

                    
                    <div class="col-lg-8">
                        <div class="form-group">
                            <a href="{{ $attachment->path }}" target="_blank">{{$attachment->name}}</a>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group">
                                <form method="POST" action="/admin/model/{{ $attachment->id }}/delete" class="attachment_deletion_form">
                                    {{ csrf_field() }}
                             

                                <button type="submit" class="btn btn-danger">Rimuovi</button>
                                </form>
                        </div>
                    </div>

                    @endforeach
                    
                    <form method="POST" action="/admin/model/upload_attachment" enctype="multipart/form-data">
                        {{ csrf_field() }}
                    <input type="hidden" name="activity_id" value="{{$activity->id}}">
                 
                    <div class="col-lg-4">
                        <div class="form-group">
                            <input type="text" class="form-control" name="name" placeholder="Nome allegato">
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <div class="form-group">
                            <input type="file" class="form-control" name="file">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary" value="Carica">
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
    
</div>