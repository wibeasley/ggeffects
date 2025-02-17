.post_processing_labels <- function(model, result, original_model_frame, data_grid, cleaned_terms, original_terms, model_info, type, prediction.interval, at_list, condition = NULL, ci.lvl = .95) {
  # get axis titles and labels
  all.labels <- .get_axis_titles_and_labels(
    model,
    original_model_frame = original_model_frame,
    terms = cleaned_terms,
    fun = .get_model_function(model),
    model_info = model_info,
    no.transform = FALSE,
    type = type
  )

  # set attributes with necessary information
  .set_attributes_and_class(
    data = result,
    model = model,
    t.title = all.labels$t.title,
    x.title = all.labels$x.title,
    y.title = all.labels$y.title,
    l.title = all.labels$l.title,
    legend.labels = attr(result, "legend.labels"),
    x.axis.labels = all.labels$axis.labels,
    model_info = model_info,
    constant.values = attr(data_grid, "constant.values", exact = TRUE),
    terms = cleaned_terms,
    original_terms = original_terms,
    at_list = at_list,
    n.trials = attr(data_grid, "n.trials", exact = TRUE),
    prediction.interval = prediction.interval,
    condition = condition,
    ci.lvl = ci.lvl,
    type = type
  )
}
