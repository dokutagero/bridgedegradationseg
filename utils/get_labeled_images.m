clear all
addpath('/<your-path>/LabelMeToolbox/main')
addpath('/<your-path>/LabelMeToolbox/XMLtools')
addpath('/<your-path>/LabelMeToolbox/utils')
addpath('/<your-path>/LabelMeToolbox/querytools')
addpath('/<your-path>/LabelMeToolbox/3Dtools')
addpath('/<your-path>/LabelMeToolbox/imagemanipulation')

HOMEIMAGES = '/<your-path>/bridge/images'; % you can set here your default folder
HOMEANNOTATIONS = '/<your-path>/bridge/annotations'; % you can set here your default folder
OP_ANNOTATIONS = '/<your-path>/bridge/annotations/temp';

D = LMdatabase(HOMEANNOTATIONS);
relativearea = LMlabeledarea(D);
ndx = find(relativearea>.1);
D = D(ndx);
relativearea = relativearea(ndx);
Nimages = length(D);

for ndx = 1:Nimages
    annotation = D(ndx).annotation;
    [mask, class] = LMobjectmask(annotation, HOMEIMAGES);
    m = zeros(size(mask,1), size(mask,2));
    damage_class = ["crack_caused_by_corrosion", "delamination", "rebar_exposure"];
    class_name = {annotation.object.name};
    for c = 1:length(class_name)
        if any(strcmp(damage_class, class_name{c}))
            m = m + mask(:,:,c);
        end 
    end
    write_dir = fullfile(OP_ANNOTATIONS, D(ndx).annotation.folder, [D(ndx).annotation.filename(1:end-4) '.jpg']);
    imwrite(m, write_dir)
end
