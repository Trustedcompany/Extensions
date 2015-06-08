<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-text_tp_text" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>

      <div class="panel-body">
        <p><?php echo $text_acf; ?></p>
        <form action="<?php echo $action; ?>" method="post" id="form-trustedcompanyacf" class="form-horizontal">


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-trustedcompanydns"><?php echo $texte_dns; ?></label>
            <div class="col-sm-10">
              <input size="60" name="trustedcompanyacf_client_domain" class="form-control" value="<?php if (isset($trustedcompanyacf_client_domain)) { echo $trustedcompanyacf_client_domain; } ?>" />
            </div>
          </div>  

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-trustedcompanyinboundemail"><?php echo $texte_add_email; ?></label>
            <div class="col-sm-10">
              <input size="60" name="trustedcompanyacf_inbound_email" class="form-control" value="<?php if (isset($trustedcompanyacf_inbound_email)) { echo $trustedcompanyacf_inbound_email; } ?>" />
            </div>
          </div>  


        </form>
      </div>
    </div>
  </div>
</div>



<?php echo $footer; ?>