const path = require('path');
const Max = require('max-api');
let { PythonShell } = require('python-shell');

Max.post(`Loaded the ${path.basename(__filename)} script`);


Max.addHandler('input', (StartFileInput, PredictNum, GoalFileInput) => {


    let options = {
        mode: 'text',
        pythonPath: '/Users/yugakoba/.pyenv/versions/anaconda3-2019.10/envs/avicii/bin/python',
		// pythonPath: 'type here your python path (e.g. above)',
        pythonOptions: ['-u'], // get print results in real-time
        args: [StartFileInput, PredictNum, GoalFileInput]
    };


    PythonShell.run('./auto_playlist_maker.py', options, function(err, results) {
        if (err) throw err;
        Max.outlet(results);
    });

});