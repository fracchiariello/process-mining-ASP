activity("a_submitted").

activity("a_partlysubmitted").

activity("a_declined").

activity("a_preaccepted").

activity("w_completeren aanvraag").

activity("a_accepted").

activity("o_sent").

activity("o_selected").

activity("a_finalized").

activity("o_created").

activity("w_nabellen offertes").

activity("w_afhandelen leads").

activity("o_sent_back").

activity("w_valideren aanvraag").

activity("a_cancelled").

activity("o_cancelled").

activity("a_activated").

activity("a_registered").

activity("a_approved").

activity("o_accepted").

activity("w_nabellen incomplete dossiers").

activity("o_declined").

activity("w_beoordelen fraude").

template(0,"Exactly1").
activation(0,"a_partlysubmitted").

template(1,"Exactly1").
activation(1,"a_submitted").

template(2,"Chain Succession").
activation(2,"a_submitted").
target(2,"a_partlysubmitted").

template(3,"Absence2").
activation(3,"a_declined").

template(4,"Absence2").
activation(4,"a_preaccepted").

template(5,"Init").
activation(5,"a_submitted").

template(6,"Absence").
activation(6,"w_beoordelen fraude").

template(7,"Absence").
activation(7,"o_declined").

template(8,"Absence").
activation(8,"w_nabellen incomplete dossiers").

template(9,"Absence").
activation(9,"o_accepted").

template(10,"Absence").
activation(10,"a_registered").

template(11,"Absence").
activation(11,"a_approved").

template(12,"Absence").
activation(12,"a_activated").

template(13,"Absence").
activation(13,"o_cancelled").

template(14,"Absence").
activation(14,"a_cancelled").

template(15,"Absence").
activation(15,"w_valideren aanvraag").

template(16,"Absence").
activation(16,"o_sent_back").

template(17,"Absence2").
activation(17,"w_completeren aanvraag").

template(18,"Absence").
activation(18,"w_afhandelen leads").

template(19,"Absence").
activation(19,"w_nabellen offertes").

template(20,"Absence").
activation(20,"a_finalized").

template(21,"Absence").
activation(21,"o_selected").

template(22,"Absence").
activation(22,"o_sent").

template(23,"Absence").
activation(23,"o_created").

template(24,"Absence").
activation(24,"a_accepted").

