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

template(0,"Chain Succession").
activation(0,"a_submitted").
target(0,"a_partlysubmitted").

template(1,"Exactly1").
activation(1,"a_partlysubmitted").

template(2,"Exactly1").
activation(2,"a_submitted").

template(3,"Absence2").
activation(3,"a_finalized").

template(4,"Absence2").
activation(4,"a_accepted").

template(5,"Absence2").
activation(5,"a_declined").

template(6,"Absence2").
activation(6,"a_preaccepted").

template(7,"Init").
activation(7,"a_submitted").

template(8,"Absence").
activation(8,"w_beoordelen fraude").

template(9,"Absence2").
activation(9,"w_afhandelen leads").

template(10,"Absence").
activation(10,"o_declined").

template(11,"Absence2").
activation(11,"o_selected").

template(12,"Absence2").
activation(12,"o_sent").

template(13,"Absence2").
activation(13,"o_created").

template(14,"Absence").
activation(14,"w_nabellen incomplete dossiers").

template(15,"Absence").
activation(15,"o_accepted").

template(16,"Absence").
activation(16,"a_registered").

template(17,"Absence").
activation(17,"a_activated").

template(18,"Absence").
activation(18,"a_approved").

template(19,"Absence").
activation(19,"o_cancelled").

template(20,"Absence").
activation(20,"a_cancelled").

template(21,"Absence3").
activation(21,"w_completeren aanvraag").

template(22,"Absence").
activation(22,"w_valideren aanvraag").

template(23,"Absence").
activation(23,"o_sent_back").

template(24,"Absence3").
activation(24,"w_nabellen offertes").

