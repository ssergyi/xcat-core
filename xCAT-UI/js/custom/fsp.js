$(document).ready(function(){
	// Include utility scripts
});

/**
 * Constructor
 * 
 * @return Nothing
 */
var fspPlugin = function() {
	
};

/**
 * Load node inventory
 * 
 * @param data
 *            Data from HTTP request
 * @return Nothing
 */
fspPlugin.prototype.loadInventory = function(data) {
	
};

/**
 * Load clone page
 * 
 * @param node
 *            Source node to clone
 * @return Nothing
 */
fspPlugin.prototype.loadClonePage = function(node) {
	
};

/**
 * Load provision page
 * 
 * @param tabId
 *            The provision tab ID
 * @return Nothing
 */
fspPlugin.prototype.loadProvisionPage = function(tabId) {
	var errMsg;

	// Get the OS image names
	$.ajax( {
		url : 'lib/cmd.php',
		dataType : 'json',
		data : {
			cmd : 'tabdump',
			tgt : '',
			args : 'osimage',
			msg : ''
		},

		success : setOSImageCookies
	});

	// Get groups
	$.ajax( {
		url : 'lib/cmd.php',
		dataType : 'json',
		data : {
			cmd : 'extnoderange',
			tgt : '/.*',
			args : 'subgroups',
			msg : ''
		},

		success : setGroupsCookies
	});

	// Generate new tab ID
	var inst = tabId.replace('fspProvisionTab', '');

	// Open new tab
	// Create provision form
	var provForm = $('<div class="form"></div>');

	// Create status bar
	var barId = 'fspProvisionStatBar' + inst;
	var statBar = createStatusBar(barId);
	statBar.hide();
	provForm.append(statBar);

	// Create loader
	var loader = createLoader('fspProvisionLoader' + inst);
	loader.hide();
	statBar.append(loader);

	// Create info bar
	var infoBar = createInfoBar('Provision a FSP node');
	provForm.append(infoBar);

	// Append to provision tab
	$('#' + tabId).append(provForm);

	// Node name
	var nodeName = $('<div><label for="nodeName">Node:</label><input type="text" name="nodeName"/></div>');
	provForm.append(nodeName);
	
	// Group
	var group = $('<div></div>');
	var groupLabel = $('<label for="group">Group:</label>');
	var groupInput = $('<input type="text" name="group"/>');

	// Get the groups on-focus
	groupInput.focus(function() {
		var groupNames = $.cookie('Groups');

		// If there are groups, turn on auto-complete
		if (groupNames) {
			$(this).autocomplete(groupNames.split(','));
		}
	});

	group.append(groupLabel);
	group.append(groupInput);
	provForm.append(group);
		
	// Boot method (boot, install, stat, iscsiboot, netboot, statelite)
	var method = $('<div></div>');
	var methodLabel = $('<label for="method">Boot method:</label>');
	var methodSelect = $('<select id="bootMethod" name="bootMethod"></select>');
	methodSelect.append('<option value="boot">boot</option>');
	methodSelect.append('<option value="install">install</option>');
	methodSelect.append('<option value="iscsiboot">iscsiboot</option>');
	methodSelect.append('<option value="netboot">netboot</option>');
	methodSelect.append('<option value="statelite">statelite</option>');
	method.append(methodLabel);
	method.append(methodSelect);
	provForm.append(method);
	
	// Boot type (zvm, pxe, yaboot)
	var type = $('<div></div>');
	var typeLabel = $('<label for="type">Boot type:</label>');
	var typeSelect = $('<select id="bootType" name="bootType"></select>');
	typeSelect.append('<option value="zvm">zvm</option>');
	typeSelect.append('<option value="install">pxe</option>');
	typeSelect.append('<option value="iscsiboot">yaboot</option>');
	type.append(typeLabel);
	type.append(typeSelect);
	provForm.append(type);

	// Operating system
	var os = $('<div></div>');
	var osLabel = $('<label for="os">Operating system:</label>');
	var osInput = $('<input type="text" name="os"/>');

	// Get the OS versions on-focus
	var tmp;
	osInput.focus(function() {
		tmp = $.cookie('OSVers');

		// If there are any, turn on auto-complete
		if (tmp) {
			$(this).autocomplete(tmp.split(','));
		}
	});
	os.append(osLabel);
	os.append(osInput);
	provForm.append(os);

	// Architecture
	var arch = $('<div></div>');
	var archLabel = $('<label for="arch">Architecture:</label>');
	var archInput = $('<input type="text" name="arch"/>');

	// Get the OS architectures on-focus
	archInput.focus(function() {
		tmp = $.cookie('OSArchs');

		// If there are any, turn on auto-complete
		if (tmp) {
			$(this).autocomplete(tmp.split(','));
		}
	});
	arch.append(archLabel);
	arch.append(archInput);
	provForm.append(arch);

	// Profiles
	var profile = $('<div></div>');
	var profileLabel = $('<label for="profile">Profile:</label>');
	var profileInput = $('<input type="text" name="profile"/>');

	// Get the profiles on-focus
	profileInput.focus(function() {
		tmp = $.cookie('Profiles');

		// If there are any, turn on auto-complete
		if (tmp) {
			$(this).autocomplete(tmp.split(','));
		}
	});
	profile.append(profileLabel);
	profile.append(profileInput);
	provForm.append(profile);
	
	/**
	 * Provision
	 */
	var provisionBtn = createButton('Provision');
	provisionBtn.bind('click', function(event) {
		// Insert provision code here
	});
	provForm.append(provisionBtn);
};

/**
 * Load resources
 * 
 * @return Nothing
 */
fspPlugin.prototype.loadResources = function() {
	
};