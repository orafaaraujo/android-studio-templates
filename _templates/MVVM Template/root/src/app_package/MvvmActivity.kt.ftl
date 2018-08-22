package ${packageName}

import android.content.Intent
import android.databinding.DataBindingUtil
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import org.koin.android.architecture.ext.viewModel

class ${className}Activity : AppCompatActivity() {

	private val viewModel: ${className}ViewModel by viewModel()

	private var binding: Activity${className}Binding? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        binding = DataBindingUtil.setContentView(this, R.layout.${layoutName})
        binding?.viewModel = viewModel
    }

    companion object {
        fun startActivity(activity: AppCompatActivity) {
            
            val intent = Intent(activity, ${className}Activity::class.java)
            activity.startActivity(intent)
        }
    }
}
